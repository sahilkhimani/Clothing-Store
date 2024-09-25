import 'package:fashion_clothing/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainClass());
}

class MainClass extends StatelessWidget {
  const MainClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
