import 'package:e_learning/core/utils/app_router.dart';
import 'package:e_learning/core/utils/colors.dart';
import 'package:e_learning/core/widgets/custom_button.dart';
import 'package:e_learning/core/widgets/custom_text_form_field.dart';
import 'package:e_learning/feature/auth/forget_password/presentation/view/widgets/custom_head_forget_password.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordViewBody extends StatefulWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
  TextEditingController emailController = TextEditingController();

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              const CustomHeadForgetPassword(),
              const SizedBox(height: 50),
              CustomTextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: "\t\t\t\t\tEnter Email Address",
                validatorText: 'enter your e-mail address !',
              ),
              const SizedBox(height: 30),
              CustomButon(
                background: MyColor.kPrimaryColor,
                text: 'Send',
                isLoading: isLoading,
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kVerifyView);
                  if (formKey.currentState!.validate()) {
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
