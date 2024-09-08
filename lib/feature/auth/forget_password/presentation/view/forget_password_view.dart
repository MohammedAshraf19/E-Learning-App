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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17,
                    child: FaIcon(
                      FontAwesomeIcons.xmark,
                      color: Color(0xff4b4b4b),
                    ),
                  ),
                ),
              ],
            ),
            const ForgetPasswordViewBody(),
          ],
        ),
      ),
    );
  }
}
