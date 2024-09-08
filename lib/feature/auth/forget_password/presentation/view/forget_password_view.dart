import 'package:e_learning/core/utils/colors.dart';
import 'package:e_learning/feature/auth/forget_password/presentation/view/widgets/forget_password_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ForGetPasswordView extends StatelessWidget {
  const ForGetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.kBackGroundColorBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            mini: true,
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: const FaIcon(FontAwesomeIcons.xmark),
          ),
          // InkWell(
          //   onTap: () {
          //     GoRouter.of(context).pop();
          //   },
          //   child: const CircleAvatar(
          //     backgroundColor: Colors.white,
          //     radius: 20,
          //     child: FaIcon(FontAwesomeIcons.xmark),
          //   ),
          // ),
          const SizedBox(width: 20)
        ],
      ),
      body: const ForgetPasswordViewBody(),
    );
  }
}
