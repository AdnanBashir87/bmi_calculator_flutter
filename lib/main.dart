import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/views/home_screen.dart';
import 'package:bmi_calculator_flutter/views/result_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMI_Calculator());

class BMI_Calculator extends StatelessWidget {
  const BMI_Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(color: kPrimaryColor),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/result': (context) => const Results(),
      },
    );
  }
}
