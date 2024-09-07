import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/feature/auth/sign_up/presentation/view/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackGroundColorBlack,
      body: SignupViewBody(),
    );
  }
}
