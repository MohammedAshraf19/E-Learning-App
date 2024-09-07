import 'package:flutter/material.dart';

class CustomHeadVerify extends StatelessWidget {
  const CustomHeadVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'We sent you a 4 digit code to verify\nyour email address\n(desx@gmail.com).  Enter in the\nfield below.',
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
