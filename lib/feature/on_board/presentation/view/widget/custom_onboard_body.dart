import 'package:e_learning/core/utils/colors.dart';
import 'package:e_learning/feature/on_board/data/model/onboarding_model.dart';
import 'package:e_learning/feature/on_board/presentation/manager/on_boarding_cubit.dart';
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
        if (OnBoardingCubit.get(context).page == 1)
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
          ),
        if (OnBoardingCubit.get(context).page == 1)
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 7),
            child: Text(
              onboardingModel.desc,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: onboardingModel.txtColor,
              ),
            ),
          ),
        Expanded(child: Image.asset(onboardingModel.image)),
        if (OnBoardingCubit.get(context).page == 2)
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 10),
            child: const Text(
              'Learn Anytime,',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: MyColor.kColorWhite,
              ),
            ),
          ),
        if (OnBoardingCubit.get(context).page != 1)
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 10),
            child: Text(
              onboardingModel.desc,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: onboardingModel.txtColor,
              ),
            ),
          ),
      ],
    );
  }
}
