import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class AuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  String? _previousRoute;

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      if (await _isInternetConnected()) {
        await _googleSignIn.signOut();
        _updatePreviousRoute(context);

        final GoogleSignInAccount? googleSignInAccount =
            await _googleSignIn.signIn();

        if (googleSignInAccount != null) {
          final GoogleSignInAuthentication? googleSignInAuthentication =
              await googleSignInAccount.authentication;

          if (googleSignInAuthentication != null) {
            final AuthCredential credential = GoogleAuthProvider.credential(
              accessToken: googleSignInAuthentication.accessToken,
              idToken: googleSignInAuthentication.idToken,
            );

            await FirebaseAuth.instance.signInWithCredential(credential);
            // Proceed to the next screen or perform another action after successful login
          } else {
            _handleSignInError(
                context, 'Google sign-in authentication failed.');
          }
        } else {
          _handleSignInError(
              context, 'Sign-in process was cancelled by the user.');
        }
      } else {
        _handleSignInError(context,
            'No internet connection. Please connect to the internet and try again.');
      }
    } on SocketException {
      _handleSignInError(context,
          'No internet connection. Please connect to the internet and try again.');
    } on PlatformException catch (e) {
      _handleSignInError(
          context, 'An error occurred during sign-in: ${e.message}');
    } catch (error) {
      _handleSignInError(
          context, 'An unexpected error occurred during sign-in.');
    }
  }

  Future<bool> _isInternetConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  void _updatePreviousRoute(BuildContext context) {
    _previousRoute = ModalRoute.of(context)?.settings.name;
  }

  void _handleSignInError(BuildContext context, String errorMessage) {
    print('Sign-in error: $errorMessage');

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Sign-In Error'),
          content: Text(errorMessage),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}
