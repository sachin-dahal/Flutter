import 'package:flutter/material.dart';
import 'package:code_learno/constants.dart';
import 'package:code_learno/screens/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBgColor,
      ),
      title: 'CodeLearno',
      home: SafeArea(
        child: OnBoardingScreen(),
      ),
    );
  }
}
