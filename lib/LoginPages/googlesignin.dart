import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class AuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  late String? _previousRoute;

  Future<void> signInWithGoogle(BuildContext context) async {
    // Sign out the user from Google to reset the authentication flow
    await _googleSignIn.signOut();

    // Store the current route
    _previousRoute = ModalRoute.of(context)!.settings.name;

    // Show circular loading indicator
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent user from dismissing dialog
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(), // Circular loading indicator
        );
      },
    );

    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        await FirebaseAuth.instance.signInWithCredential(credential);

        // Close the loading dialog after sign-in is complete
        Navigator.of(context).pop();
      } else {
        // Close the loading dialog
        Navigator.of(context).pop();
        // Navigate back to the previous route
        Navigator.popAndPushNamed(context, _previousRoute!);
      }
    } catch (error) {
      // Close the loading dialog
      Navigator.of(context).pop();
      // Show error message or perform any other action
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Sign-in Error'),
            content: Text('An error occurred during sign-in.'),
            actions: [
              TextButton(
                onPressed: () {
                  // Navigate back to the previous route
                  Navigator.popAndPushNamed(context, _previousRoute!);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
