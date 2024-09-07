import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/feature/auth/sign_in/presentation/view/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackGroundColorBlack,
      body: SignInViewBody(),
    );
  }
}
