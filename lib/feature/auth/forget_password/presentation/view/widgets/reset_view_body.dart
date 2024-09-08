import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/core/widgets/custom_button.dart';
import 'package:e_learning/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ResetViewBody extends StatefulWidget {
  const ResetViewBody({super.key});

  @override
  State<ResetViewBody> createState() => _ResetViewBodyState();
}

class _ResetViewBodyState extends State<ResetViewBody> {
  TextEditingController passwordController = TextEditingController();
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
                CustomTextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  //prefixIcon: const Icon(Icons.lock_outline),
                  labelText: '${kTapTFF}New Password',
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
                const SizedBox(height: 200),
                CustomButon(
                  text: 'Submit',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
