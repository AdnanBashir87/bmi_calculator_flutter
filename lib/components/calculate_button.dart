import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants.dart';

class CalculateButton extends StatelessWidget {
  String buttonText;
  Function()? onPress;
  CalculateButton({super.key, this.onPress, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 20),
      margin: const EdgeInsets.only(top: 10),
      color: kPinkColor,
      child: TextButton(
        onPressed: onPress,
        child: Text(
          buttonText,
          style: kLargeTextStyle,
        ),
      ),
    );
  }
}
