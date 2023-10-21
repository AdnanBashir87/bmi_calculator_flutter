import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableContainer extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  Function()? onPress;
  ReusableContainer({
    super.key,
    required this.cardColor,
    required this.cardChild,
    this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: cardChild,
      ),
    );
  }
}

enum Gender { male, female }
