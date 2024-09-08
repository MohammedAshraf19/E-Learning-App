import 'package:e_learning/feature/on_board/presentation/manager/on_boarding_cubit.dart';
import 'package:e_learning/feature/on_board/presentation/manager/on_boarding_state.dart';
import 'package:e_learning/feature/on_board/presentation/view/widget/custom_next_row.dart';
import 'package:e_learning/feature/on_board/presentation/view/widget/custom_onboard_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardViewBody extends StatefulWidget {
  const OnBoardViewBody({super.key});

  @override
  State<OnBoardViewBody> createState() => _OnBoardViewBodyState();
}

class _OnBoardViewBodyState extends State<OnBoardViewBody> {


  @override
  void dispose() {
    OnBoardingCubit.get(context).pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                controller: OnBoardingCubit.get(context).pageController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    CustomOnboardBody(onboardingModel: OnBoardingCubit.get(context).onboards[index]),
                itemCount: OnBoardingCubit.get(context).onboards.length,
                onPageChanged: (index) {
                  OnBoardingCubit.get(context).onchange(index);
                },
              ),
            ),
            const SizedBox(height: 60),
            CustomNextRow(isLast: OnBoardingCubit.get(context).isLast, pageController: OnBoardingCubit.get(context).pageController),
            const SizedBox(height: 30)
          ],
        );
      },
    );
  }
}

