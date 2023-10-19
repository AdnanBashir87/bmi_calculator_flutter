import 'package:flutter/material.dart';

import '../constants.dart';

class ReUseableContainer extends StatelessWidget {
  final Color cardColor;
  final child;
  const ReUseableContainer({
    super.key,
    required this.cardColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
