import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData sex;
  final String text;
  IconContent({super.key, required this.sex, required this.text});
  TextStyle labelTextStyle = TextStyle(fontSize: 18, color: textColor1);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(sex, size: 80),
        const SizedBox(height: 15),
        Text(
          text,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
