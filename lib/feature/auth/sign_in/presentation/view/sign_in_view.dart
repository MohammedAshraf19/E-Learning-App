import 'package:e_learning/core/utils/colors.dart';
import 'package:e_learning/feature/auth/sign_in/presentation/view/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: MyColor.kBackGroundColorBlack, // Change the status bar color
        statusBarIconBrightness: Brightness.light, // Change icons to light color
      ),
    );
    return const Scaffold(
      backgroundColor: MyColor.kBackGroundColorBlack,
      body: SignInViewBody(),
    );
  }
}
