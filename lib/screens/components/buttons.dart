import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';

class MyButtons extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final bool isLoading; // Add isLoading parameter

  const MyButtons({
    Key? key,
    required this.onTap,
    required this.text,
    required this.isLoading, // Ensure isLoading is required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap, // Disable tap when loading
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: kblue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                )
              : Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
        ),
      ),
    );
  }
}
