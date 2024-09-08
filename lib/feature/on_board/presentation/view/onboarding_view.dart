import 'package:e_learning/feature/on_board/presentation/manager/on_boarding_cubit.dart';
import 'package:e_learning/feature/on_board/presentation/manager/on_boarding_state.dart';
import 'package:e_learning/feature/on_board/presentation/view/widget/onboarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OnBoardingCubit(),
      child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
        builder: (BuildContext context, OnBoardingState state) {
          SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle(
              statusBarColor: OnBoardingCubit.get(context).onBoardingPageColor[
                  OnBoardingCubit.get(context)
                      .page], // Set the status bar color to green
              statusBarIconBrightness: OnBoardingCubit.get(context).page == 1
                  ? Brightness.dark
                  : Brightness.light, // Make the status bar icons light-colored
            ),
          );
          return Scaffold(
            backgroundColor: OnBoardingCubit.get(context)
                .onBoardingPageColor[OnBoardingCubit.get(context).page],
            body: const OnBoardViewBody(),
          );
        },
      ),
    );
  }
}
