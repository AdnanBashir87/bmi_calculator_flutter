import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/custom_widgets/round_Button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../custom_widgets/icon_content.dart';
import '../custom_widgets/myContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum Gender { male, female }

class _HomeScreenState extends State<HomeScreen> {
  Gender selectedGender = Gender.male;
  int height = 150;
  int weight = 50;
  int age = 18;

  void onPress(Gender gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male
                        ? kCardColor
                        : kInActiveCardColor,
                    cardChild: const IconContent(
                      sex: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardColor: selectedGender == Gender.female
                        ? kCardColor
                        : kInActiveCardColor,
                    cardChild: const IconContent(
                      sex: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(
              cardColor: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Height', style: kLabelTextStyle),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kHeightWeightAge),
                      const SizedBox(width: 10),
                      const Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Slider(
                    min: 120,
                    max: 220,
                    thumbColor: Colors.pink,
                    activeColor: kWhite,
                    inactiveColor: kTextColor,
                    value: height.toDouble(),
                    onChanged: (double newVal) {
                      setState(() {
                        height = newVal.toInt();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight",
                          style: kLabelTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(weight.toString(), style: kHeightWeightAge),
                            const SizedBox(width: 10),
                            const Text('kg', style: kLabelTextStyle),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icon: Icons.exposure_minus_1,
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(width: 10),
                            RoundButton(
                              icon: Icons.add,
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                    cardColor: kCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: kLabelTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(age.toString(), style: kHeightWeightAge),
                            const SizedBox(width: 10),
                            const Text('years', style: kLabelTextStyle),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icon: Icons.exposure_minus_1,
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(width: 10),
                            RoundButton(
                              icon: Icons.add,
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                    cardColor: kCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
