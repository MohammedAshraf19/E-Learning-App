import 'package:e_learning/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomHeadSignup extends StatelessWidget {
  const CustomHeadSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 50),
        const Text(
          'Create New Account',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
