import 'package:e_learning/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.textButton,
    this.txtColor = MyColor.kPrimaryColor,
    this.isLoading = false,
  });

  final void Function()? onPressed;
  final String textButton;
  final String text;
  final Color? txtColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
        TextButton(
          onPressed: onPressed,
          child: isLoading
              ? CircularProgressIndicator(color: txtColor)
              : Text(
                  textButton,
                  style: TextStyle(color: txtColor),
                ),
        ),
      ],
    );
  }
}
