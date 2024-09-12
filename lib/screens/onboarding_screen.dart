import 'package:fashion_clothing/screens/welcome_screen.dart';
import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:fashion_clothing/utils/images/images.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  static final PageController _pageController = PageController(initialPage: 0);
  int pageNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const WelcomeScreen()));
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: MyColors.primaryColor),
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40, top: 10),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    pageNo = value;
                  });
                },
                controller: _pageController,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Image.asset(
                          height: MediaQuery.of(context).size.height * 0.5,
                          MyImages.onBoardImage1,
                        ),
                        const SizedBox(height: 20),
                        const Text.rich(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28),
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Seamless ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.primaryColor,
                                ),
                              ),
                              TextSpan(
                                  text: "Shopping Experience",
                                  style: TextStyle(fontWeight: FontWeight.w500))
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          textAlign: TextAlign.center,
                          "An intuitive design that makes it easy for customers to find what they're looking for.",
                          style: TextStyle(
                              color: MyColors.secondaryColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Image.asset(
                          height: MediaQuery.of(context).size.height * 0.5,
                          MyImages.onBoardImage2,
                        ),
                        const SizedBox(height: 20),
                        const Text.rich(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28),
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: "Wishlist: Where ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(
                                text: "Fashion Dreams ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.primaryColor,
                                ),
                              ),
                              TextSpan(
                                  text: "Begin",
                                  style: TextStyle(fontWeight: FontWeight.w500))
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          textAlign: TextAlign.center,
                          "Can explore the latest trends, get inspired by fashion influencers, and discover new brands.",
                          style: TextStyle(
                              color: MyColors.secondaryColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Image.asset(
                          height: MediaQuery.of(context).size.height * 0.5,
                          MyImages.onBoardImage3,
                        ),
                        const SizedBox(height: 20),
                        const Text.rich(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28),
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: "Choose Your ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(
                                text: "Desired ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.primaryColor,
                                ),
                              ),
                              TextSpan(
                                  text: "Color",
                                  style: TextStyle(fontWeight: FontWeight.w500))
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          textAlign: TextAlign.center,
                          "Desired color is an essential part of creating a personalized shopping experience",
                          style: TextStyle(
                              color: MyColors.secondaryColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton.filled(
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(
                            color: pageNo != 0
                                ? MyColors.primaryColor
                                : Colors.white)),
                    onPressed: () {
                      if (pageNo != 0) {
                        pageNo--;
                        _pageController.animateToPage(pageNo,
                            duration: Durations.long1, curve: Curves.linear);
                      }
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: pageNo != 0 ? MyColors.primaryColor : Colors.white,
                    ),
                  ),
                  SmoothPageIndicator(
                      effect: const ColorTransitionEffect(
                          activeDotColor: MyColors.primaryColor),
                      controller: _pageController,
                      count: 3),
                  IconButton.filled(
                    style: IconButton.styleFrom(
                        backgroundColor: MyColors.primaryColor),
                    onPressed: () {
                      if (pageNo == 2) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const WelcomeScreen()));
                      }
                      pageNo++;
                      _pageController.animateToPage(pageNo,
                          duration: Durations.long1, curve: Curves.linear);
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
