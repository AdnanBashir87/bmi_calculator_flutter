import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData sex;
  final String text;
  const IconContent({super.key, required this.sex, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(sex, size: 80),
        const SizedBox(height: 15),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: textColor1,
          ),
        ),
      ],
    );
  }
}
