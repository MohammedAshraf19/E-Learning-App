import 'package:flutter/material.dart';

class CustomLoadingLinerIndicator extends StatelessWidget {
  const CustomLoadingLinerIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: LinearProgressIndicator(
         color: Colors.black,
        ),
      ),
    );
  }
}
