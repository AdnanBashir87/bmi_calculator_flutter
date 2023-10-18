import 'package:flutter/material.dart';

import '../constants.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        'Adnan',
        style: TextStyle(fontSize: 23),
      ),
    );
  }
}
