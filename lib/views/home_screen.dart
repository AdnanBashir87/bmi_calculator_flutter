import 'package:bmi_calculator_flutter/appBrain.dart';
import 'package:bmi_calculator_flutter/components/calculate_button.dart';
import 'package:bmi_calculator_flutter/components/icon_content.dart';
import 'package:bmi_calculator_flutter/components/myContainer.dart';
import 'package:bmi_calculator_flutter/components/round_Button.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/views/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  const Text('Height', style: kSimpleTextStyle),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kHeightWeightAge),
                      const SizedBox(width: 10),
                      const Text('cm', style: kSimpleTextStyle),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: kTextColor,
                      activeTrackColor: kWhite,
                      thumbColor: kPinkColor,
                      overlayColor: kTransparentPinkColor,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      min: 120,
                      max: 220,
                      value: height.toDouble(),
                      onChanged: (double newVal) {
                        setState(() {
                          height = newVal.toInt();
                        });
                      },
                    ),
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
                          "WEIGHT",
                          style: kSimpleTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(weight.toString(), style: kHeightWeightAge),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(width: 10),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
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
                        const Text("AGE", style: kSimpleTextStyle),
                        const SizedBox(height: 10),
                        Text(age.toString(), style: kHeightWeightAge),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(width: 10),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
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
          CalculateButton(
            onPress: () {
              AppBrain calculate = AppBrain(weight: weight, height: height);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Results(
                    calculations: calculate,
                  ),
                ),
              );
            },
            buttonText: 'CALCULATE',
          )
        ],
      ),
    );
  }
}
