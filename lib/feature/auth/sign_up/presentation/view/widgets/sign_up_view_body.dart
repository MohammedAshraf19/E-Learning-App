import 'package:e_learning/core/utils/app_router.dart';
import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/core/widgets/custom_button.dart';
import 'package:e_learning/core/widgets/custom_text_button.dart';
import 'package:e_learning/core/widgets/custom_text_form_field.dart';
import 'package:e_learning/feature/auth/sign_up/presentation/view/widgets/custom_head_signup.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  bool isLoading = false;
  bool isPassword = true;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            autovalidateMode: autoValidateMode,
            child: Column(
              children: [
                const CustomHeadSignup(),
                const SizedBox(height: 50),
                CustomTextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  //prefixIcon: const Icon(Icons.person_outlined),
                  labelText: '${kTapTFF}User Name',
                  validatorText: 'enter your name !',
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  //prefixIcon: const Icon(Icons.email_outlined),
                  labelText: '${kTapTFF}Email Address',
                  validatorText: 'enter your email address !',
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  //prefixIcon: const Icon(Icons.lock_outline),
                  labelText: '${kTapTFF}Password',
                  validatorText: 'enter your password !',
                  obscure: isPassword,
                  // suffixIcon: isPassword
                  //     ? const Icon(
                  //         Icons.visibility_outlined,
                  //         color: Colors.grey,
                  //       )
                  //     : const Icon(
                  //         Icons.visibility_off_outlined,
                  //         color: Colors.grey,
                  //       ),
                  // suffixIconPressed: () {
                  //   setState(() {
                  //     isPassword = !isPassword;
                  //   });
                  // },
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  controller: confirmController,
                  keyboardType: TextInputType.visiblePassword,
                  //prefixIcon: const Icon(Icons.lock_outline),
                  labelText: '${kTapTFF}Confirm Password',
                  validatorText: 'confirm your password !',
                  obscure: true,
                ),
                const SizedBox(height: 50),
                CustomButon(
                  text: 'Sign up',
                  isLoading: isLoading,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                    } else {
                      setState(() {
                        autoValidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                ),
                const SizedBox(height: 20),
                CustomTextButton(
                  text: 'Have an account already?',
                  textButton: 'Log in',
                  onPressed: () {
                    GoRouter.of(context).pushReplacement(AppRouter.kSignInView);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
