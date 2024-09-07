import 'dart:async';
import 'package:e_learning/core/utils/app_router.dart';
import 'package:e_learning/core/utils/assets.dart';
import 'package:e_learning/core/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => GoRouter.of(context).pushReplacement(AppRouter.kOnboardingView),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColorBlack,
      body: Center(
        child: Image.asset(AssetsData.splashLogo2),
      ),
    );
  }
}
