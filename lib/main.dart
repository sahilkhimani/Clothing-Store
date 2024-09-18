import 'package:fashion_clothing/screens/home_screen.dart';
import 'package:fashion_clothing/screens/my_cart_screen.dart';
import 'package:fashion_clothing/screens/onboarding_screen.dart';
import 'package:fashion_clothing/screens/product_details_screen.dart';
import 'package:fashion_clothing/screens/widgets/navbar.dart';
import 'package:fashion_clothing/screens/wishlist_screen.dart';
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
      // home: OnBoardingScreen(),
      home: HomeScreen(),
    );
  }
}
