import 'package:e_learning/core/utils/colors.dart';
import 'package:e_learning/core/func/submit.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../manager/on_boarding_cubit.dart';

class CustomNextRow extends StatelessWidget {
  const CustomNextRow({
    super.key,
    required this.isLast,
    required this.pageController,
  });

  final bool isLast;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          if (isLast)
            TextButton(
              onPressed: () {
                submit(context);
              },
              child:  const Text(
                'Start learning!',
                style: TextStyle(
                  color: MyColor.kColorBlackLight,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            )
          else
            Expanded(
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      submit(context);
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 15,
                        color: MyColor.kPrimaryColorLight,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: OnBoardingCubit.get(context).onboards.length,
                    effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: MyColor.kPrimaryColorLight,
                      dotWidth: 7,
                      dotHeight: 7,
                      expansionFactor: 2,
                      spacing: 5,
                    ),
                  ),
                ],
              ),
            ),
          const Spacer(),
          IconButton(
            onPressed: () {
              if (isLast) {
                submit(context);
              } else {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.fastLinearToSlowEaseIn,
                );
              }
            },
            icon:  Icon(
                Icons.arrow_forward_outlined,
              color: OnBoardingCubit.get(context).page == 0 ? MyColor.kColorWhite: MyColor.kColorBlackLight,
            ),
          )
        ],
      ),
    );
  }
}
