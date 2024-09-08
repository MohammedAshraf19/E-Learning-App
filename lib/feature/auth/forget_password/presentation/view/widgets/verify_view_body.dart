import 'package:e_learning/core/utils/app_router.dart';
import 'package:e_learning/core/utils/colors.dart';
import 'package:e_learning/core/widgets/custom_button.dart';
import 'package:e_learning/core/widgets/custom_text_button.dart';
import 'package:e_learning/feature/auth/forget_password/presentation/view/widgets/custom_head_verify.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class VerifyViewBody extends StatefulWidget {
  const VerifyViewBody({super.key});

  @override
  State<VerifyViewBody> createState() => _VerifyViewBodyState();
}

class _VerifyViewBodyState extends State<VerifyViewBody> {
  TextEditingController pinController = TextEditingController();
  String pinValue = '';
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 66,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white),
      ),
    );
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            autovalidateMode: autoValidateMode,
            child: Column(
              children: [
                const CustomHeadVerify(),
                const SizedBox(height: 50),
                Pinput(
                  controller: pinController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter the code that you receive!";
                    } else {
                      return null;
                    }
                  },
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!,
                  ),
                  onCompleted: (pin) {
                    pinValue = pin;
                    debugPrint(pin);
                  },
                ),
                const SizedBox(height: 30),
                CustomTextButton(
                  text: 'Did’t get the code?',
                  textButton: 'Resend',
                  txtColor: Colors.white,
                  onPressed: () {},
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Expires in ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "01:00",
                      style: TextStyle(color: MyColor.kPrimaryColor),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                CustomButon(
                  background: MyColor.kPrimaryColor,
                  text: 'Submit',
                  isLoading: isLoading,
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kResetView);
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
      ),
    );
  }
}
