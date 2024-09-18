import 'package:flutter/material.dart';

class Data {
  static List<Map> dataList = [
    {
      "category": "Woman",
      "images": [
        'assets/images/ballonLazer1.jpg',
        'assets/images/ballonLazer2.jpg',
        'assets/images/ballonLazer3.jpg',
        'assets/images/ballonLazer4.jpg',
        'assets/images/ballonLazer5.jpg',
        'assets/images/ballonLazer6.jpg',
      ],
      "name": "Ballon Lazer",
      "details":
          "Round neck blazer with long sleeves with dropped shoulders. Front flap detail. Matching interior lining. Front closure with self lined buttons.",
      "size": ['S', 'M', 'L', 'XL'],
      "color": {
        'black': Colors.black,
        'blue': Colors.blue,
        'brown': Colors.brown
      },
      "price": 69.90,
      "rating": "4.9",
      "favorite": false
    },
    {
      "category": "Woman",
      "images": [
        'assets/images/BootCutJeans1.jpg',
        'assets/images/BootCutJeans2.jpg',
        'assets/images/BootCutJeans3.jpg',
        'assets/images/BootCutJeans4.jpg',
        'assets/images/BootCutJeans5.jpg',
        'assets/images/BootCutJeans6.jpg'
      ],
      "name": "Boot Cut Jeans",
      "details": "Slim Fit - Bootcut Leg - High Waist ZW ZARA WOMAN JEANS",
      "size": ['25', '26', '27', '28', '29', '30'],
      "color": [Colors.brown, Colors.black, Colors.white],
      "price": 49.90,
      "rating": "4.7",
      "favorite": false
    },
    {
      "category": "Man",
      "images": [
        'assets/images/RibbedShirt1.jpg',
        'assets/images/RibbedShirt2.jpg',
        'assets/images/RibbedShirt3.jpg',
        'assets/images/RibbedShirt4.jpg',
        'assets/images/RibbedShirt5.jpg',
        'assets/images/RibbedShirt6.jpg',
      ],
      "name": "Ribbed T-Shirt",
      "details": "SLIM FIT - SCOOP NECK - REGULAR LENGTH - LONG SLEEVE",
      "size": ['XS', 'S', 'M', 'L', 'XL'],
      "color": [Colors.white, Colors.pink, Colors.white],
      "price": 25.90,
      "rating": "4.0",
      "favorite": false
    },
    {
      "category": "Woman",
      "images": [
        'assets/images/ballonLazer1.jpg',
        'assets/images/ballonLazer2.jpg',
        'assets/images/ballonLazer3.jpg',
        'assets/images/ballonLazer4.jpg',
        'assets/images/ballonLazer5.jpg',
        'assets/images/ballonLazer6.jpg'
      ],
      "name": "Ballon Lazer",
      "details":
          "Round neck blazer with long sleeves with dropped shoulders. Front flap detail. Matching interior lining. Front closure with self lined buttons.",
      "size": ['S', 'M', 'L', 'XL'],
      "color": [Colors.black, Colors.brown, Colors.white, Colors.blue],
      "price": 69.90,
      "rating": "4.9",
      "favorite": false
    },
    {
      "category": "Woman",
      "images": [
        'assets/images/BootCutJeans1.jpg',
        'assets/images/BootCutJeans2.jpg',
        'assets/images/BootCutJeans3.jpg',
        'assets/images/BootCutJeans4.jpg',
        'assets/images/BootCutJeans5.jpg',
        'assets/images/BootCutJeans6.jpg'
      ],
      "name": "Boot Cut Jeans",
      "details": "Slim Fit - Bootcut Leg - High Waist ZW ZARA WOMAN JEANS",
      "size": ['25', '26', '27', '28', '29', '30'],
      "color": [Colors.black, Colors.brown, Colors.white, Colors.blue],
      "price": 49.90,
      "rating": "4.7",
      "favorite": false
    },
    {
      "category": "Woman",
      "images": [
        'assets/images/RibbedShirt1.jpg',
        'assets/images/RibbedShirt2.jpg',
        'assets/images/RibbedShirt3.jpg',
        'assets/images/RibbedShirt4.jpg',
        'assets/images/RibbedShirt5.jpg',
        'assets/images/RibbedShirt6.jpg'
      ],
      "name": "Ribbed T-Shirt ribbed t shirt",
      "details": "SLIM FIT - SCOOP NECK - REGULAR LENGTH - LONG SLEEVE",
      "size": ['XS', 'S', 'M', 'L', 'XL'],
      "color": [Colors.black, Colors.brown, Colors.white, Colors.blue],
      "price": 25.90,
      "rating": "4.0",
      "favorite": false
    }
  ];
  static TimeOfDay time = const TimeOfDay(hour: 24, minute: 24);
  static List<String> sortingKeyword = [
    "All",
    "Newest",
    "Popular",
    "Man",
    "Woman"
  ];

  static List myOrderCart = [];
}
