import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/core/widgets/submit.dart';
import 'package:e_learning/feature/on_board/presentation/view/widget/onboarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
              child: const Text(
                'Start learning!',
                style: TextStyle(
                  color: Colors.black,
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
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: onboards.length,
                    effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: kPrimaryColor,
                      dotWidth: 10,
                      dotHeight: 10,
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
            icon: const Icon(Icons.arrow_forward_outlined),
          )
        ],
      ),
    );
  }
}
