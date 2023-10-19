import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../custom_widgets/icon_content.dart';
import '../custom_widgets/myContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUseableContainer(
                    cardColor: cardColor,
                    child: const IconContent(
                      sex: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReUseableContainer(
                    cardColor: cardColor,
                    child: const IconContent(
                      sex: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReUseableContainer(
              cardColor: cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUseableContainer(
                    cardColor: cardColor,
                  ),
                ),
                Expanded(
                  child: ReUseableContainer(
                    cardColor: cardColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
