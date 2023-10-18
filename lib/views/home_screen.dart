import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/models/myContainer.dart';
import 'package:flutter/material.dart';

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
      body: const Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: MyContainer()),
                Expanded(child: MyContainer()),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: MyContainer()),
                Expanded(child: MyContainer()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
