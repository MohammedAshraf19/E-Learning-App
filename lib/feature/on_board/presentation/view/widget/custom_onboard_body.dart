import 'package:e_learning/feature/on_board/data/model/onboarding_model.dart';
import 'package:flutter/material.dart';

class CustomOnboardBody extends StatelessWidget {
  const CustomOnboardBody({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.asset(onboardingModel.image)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Text(
            onboardingModel.desc,
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: onboardingModel.txtColor,
            ),
          ),
        ),
      ],
    );
  }
}
