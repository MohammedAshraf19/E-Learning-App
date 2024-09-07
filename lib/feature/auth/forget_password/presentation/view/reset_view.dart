import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/feature/auth/forget_password/presentation/view/widgets/reset_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetView extends StatelessWidget {
  const ResetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColorBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: kPrimaryColor,
          ),
        ),
        title: const Text(
          "Reset password",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const ResetViewBody(),
    );
  }
}
