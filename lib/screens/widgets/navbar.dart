import 'package:fashion_clothing/screens/home_screen.dart';
import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: MyColors.navBarBackColor,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // decoration: const BoxDecoration(
            //     shape: BoxShape.circle, color: Colors.white),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const HomeScreen()));
              },
              icon: const Icon(
                color: MyColors.navBarIconColor,
                Iconsax.home_2,
              ),
              iconSize: 30,
            ),
          ),
          Container(
            // decoration: const BoxDecoration(
            //     shape: BoxShape.circle, color: Colors.white),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                color: MyColors.navBarIconColor,
                Iconsax.bag_2_copy,
              ),
              iconSize: 30,
            ),
          ),
          Container(
            // decoration: const BoxDecoration(
            //     shape: BoxShape.circle, color: Colors.white),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                color: MyColors.navBarIconColor,
                Iconsax.heart_copy,
              ),
              iconSize: 30,
            ),
          ),
          Container(
            // decoration: const BoxDecoration(
            //     shape: BoxShape.circle, color: Colors.white),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                color: MyColors.navBarIconColor,
                Iconsax.message_copy,
              ),
              iconSize: 30,
            ),
          ),
          Container(
            // decoration: const BoxDecoration(
            //     shape: BoxShape.circle, color: Colors.white),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                color: MyColors.navBarIconColor,
                Iconsax.profile_circle,
              ),
              iconSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
