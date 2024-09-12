import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({super.key, required this.myIcon, required this.iconText});
  final IconData myIcon;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
              color: MyColors.borderColor,
              borderRadius: BorderRadius.circular(100)),
          child: Icon(
            myIcon,
            color: MyColors.primaryColor,
            size: 30,
          ),
        ),
        Text(
          iconText,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
