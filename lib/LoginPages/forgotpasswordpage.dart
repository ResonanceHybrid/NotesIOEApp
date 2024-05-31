import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/buttons.dart';
import 'package:ioe/screens/components/textfield.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();
  bool isLoading = false;

  void setLoading(bool loading) {
    setState(() {
      isLoading = loading;
    });
  }

  void goToLoginPage() {
    Navigator.pop(context);
  }

  void resetPassword() async {
    setLoading(true);

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: emailController.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      showErrorMessage(e.code);
    } finally {
      setLoading(false);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: kblue,
          title: Center(
            child: Text(
              message,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Image.asset(
                  'assets/images/logo.png',
                  height: 150,
                ),
                SizedBox(height: 20),
                Text(
                  'Enter your registered Email Address!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                TextFields(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),
                SizedBox(height: 20),
                MyButtons(
                  text: 'Reset Password',
                  onTap: resetPassword,
                  isLoading: isLoading, // Pass loading state to the button
                ),
                SizedBox(height: 20), // Add some spacing
                MyButtons(
                  text: 'Go to Login Page',
                  onTap: goToLoginPage,
                  isLoading: false, // No loading state needed for this button
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
