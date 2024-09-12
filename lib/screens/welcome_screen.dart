import 'package:fashion_clothing/screens/auth_screens/login_screen.dart';
import 'package:fashion_clothing/screens/auth_screens/register_screen.dart';
import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:fashion_clothing/utils/images/images.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(MyImages.welcomeImage1),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(100),
                                bottom: Radius.circular(100))),
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: MediaQuery.of(context).size.height * 0.5,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(MyImages.welcomeImage2),
                            fit: BoxFit.fitWidth,
                          ),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(70),
                            bottom: Radius.circular(70),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(MyImages.welcomeImage3),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.2,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 20),
                  const Text.rich(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                    TextSpan(
                      children: [
                        TextSpan(text: "The "),
                        TextSpan(
                            text: "Fashion App ",
                            style: TextStyle(color: MyColors.primaryColor)),
                        TextSpan(text: "That Makes You Look Your Best")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      style: TextStyle(color: MyColors.secondaryColor),
                      textAlign: TextAlign.center,
                      "We are committed to providing excellence and elegance in clothes"),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * 0.9, 60),
                        backgroundColor: MyColors.primaryColor),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const RegisterScreen()));
                    },
                    child: const Text(
                      "Let's Get Started",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 19),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const LoginScreen()));
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: MyColors.primaryColor,
                                decoration: TextDecoration.underline,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
