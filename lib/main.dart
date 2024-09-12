import 'package:fashion_clothing/screens/home_screen.dart';
import 'package:fashion_clothing/screens/onboarding_screen.dart';
import 'package:fashion_clothing/screens/widgets/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainClass());
}

class MainClass extends StatelessWidget {
  const MainClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: OnBoardingScreen(),
      home: NavBar(),
    );
  }
}
