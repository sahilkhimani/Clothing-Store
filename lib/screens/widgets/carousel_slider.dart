import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key, required this.sliderImage});
  final String sliderImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image(
        image: AssetImage(
          sliderImage,
        ),
        fit: BoxFit.cover,
        width: double.infinity,
        height: 150,
        alignment: Alignment.topCenter,
      ),
    ));
  }
}
