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
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;
  bool selectedCard = false;
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = cardColor;
        femaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
      }
    } else {
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = cardColor;
        maleCardColor = inActiveCardColor;
      } else {
        femaleCardColor = inActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                      print('male card is pressed');
                    },
                    child: ReusableContainer(
                      cardColor: maleCardColor,
                      child: IconContent(
                        sex: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                      print('female Card is Pressed');
                    },
                    child: ReusableContainer(
                      cardColor: femaleCardColor,
                      child: IconContent(
                        sex: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(
              cardColor: cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                    cardColor: cardColor,
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
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
