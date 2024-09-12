import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
          child: Container(
        margin: const EdgeInsets.all(18),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: MyColors.navBarBackColor,
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                ),
                iconSize: 35,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                ),
                iconSize: 35,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                ),
                iconSize: 35,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.message_outlined,
                ),
                iconSize: 35,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle_outlined,
                ),
                iconSize: 35,
              ),
            )
          ],
        ),
      )),
    );
  }
}
