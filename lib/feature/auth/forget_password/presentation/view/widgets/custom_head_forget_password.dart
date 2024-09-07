import 'package:flutter/material.dart';

class CustomHeadForgetPassword extends StatelessWidget {
  const CustomHeadForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Forgot your Password?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Enter your email address and we will\nshare a link to create a new\npassword.',
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
