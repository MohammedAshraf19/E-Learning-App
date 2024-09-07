import 'package:e_learning/core/utils/app_router.dart';
import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/core/widgets/custom_button.dart';
import 'package:e_learning/core/widgets/custom_text_button.dart';
import 'package:e_learning/core/widgets/custom_text_form_field.dart';
import 'package:e_learning/feature/auth/sign_in/presentation/view/widgets/custom_head_login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                const CustomHeadLogin(),
                const SizedBox(height: 50),
                CustomTextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: const Icon(Icons.email_outlined),
                  labelText: 'E-mail Address',
                  validatorText: 'enter your e-mail address !',
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  prefixIcon: const Icon(Icons.lock_outline),
                  labelText: 'Password',
                  validatorText: 'enter your password !',
                  obscure: isPassword,
                  suffixIcon: isPassword
                      ? const Icon(
                          Icons.visibility_outlined,
                          color: Colors.grey,
                        )
                      : const Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.grey,
                        ),
                  suffixIconPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                ),
                //forget password
                Row(
                  children: [
                    const Spacer(),
                    CustomTextButton(
                      text: "",
                      textButton: 'Forget Password?',
                      onPressed: () {
                        GoRouter.of(context)
                            .push(AppRouter.kForgetPasswordView);
                      },
                    )
                  ],
                ),
                const SizedBox(height: 50),
                CustomButon(
                  background: kPrimaryColor,
                  text: 'Log in',
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
                  text: "",
                  textButton: 'Create New Account',
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kSignUpView);
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
