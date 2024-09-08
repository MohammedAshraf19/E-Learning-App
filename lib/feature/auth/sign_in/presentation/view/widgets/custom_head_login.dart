import 'package:e_learning/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomHeadLogin extends StatelessWidget {
  const CustomHeadLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 50),
        const Text(
          'Welcome Back!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Login to continue',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
