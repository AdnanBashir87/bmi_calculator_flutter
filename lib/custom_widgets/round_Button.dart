import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  Function()? onPress;
  RoundButton({
    super.key,
    this.onPress,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
