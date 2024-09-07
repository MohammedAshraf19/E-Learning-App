import 'package:e_learning/core/utils/assets.dart';
import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/feature/on_board/data/model/onboarding_model.dart';
import 'package:e_learning/feature/on_board/presentation/view/widget/custom_next_row.dart';
import 'package:e_learning/feature/on_board/presentation/view/widget/custom_onboard_body.dart';
import 'package:flutter/material.dart';

class OnBoardViewBody extends StatefulWidget {
  const OnBoardViewBody({super.key});

  @override
  State<OnBoardViewBody> createState() => _OnBoardViewBodyState();
}

class _OnBoardViewBodyState extends State<OnBoardViewBody> {
  PageController pageController = PageController();
  bool isLast = false;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: PageView.builder(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>
                CustomOnboardBody(onboardingModel: onboards[index]),
            itemCount: onboards.length,
            onPageChanged: (index) {
              if (index == onboards.length - 1) {
                setState(() {
                  isLast = true;
                });
              } else {
                setState(() {
                  isLast = false;
                });
              }
            },
          ),
        ),
        const SizedBox(height: 60),
        CustomNextRow(isLast: isLast, pageController: pageController),
        const SizedBox(height: 30)
      ],
    );
  }
}

List<OnboardingModel> onboards = [
  OnboardingModel(
    image: AssetsData.onboard1,
    desc: 'Online Study is the\nBest choice for\neveryone.',
    txtColor: Colors.black,
  ),
  OnboardingModel(
    image: AssetsData.onboard3,
    desc: 'Best platform for both\nTeachers & Learners.',
    txtColor: Colors.black,
  ),
  OnboardingModel(
    image: AssetsData.onboard2,
    desc: 'Learn Anytime,\nAnywhere, Accelerate\nYour Future and beyond.',
    txtColor: kPrimaryColor,
  ),
];
