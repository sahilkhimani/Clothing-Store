import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_clothing/screens/widgets/carousel_slider.dart';
import 'package:fashion_clothing/screens/widgets/category_box.dart';
import 'package:fashion_clothing/screens/widgets/navbar.dart';
import 'package:fashion_clothing/screens/widgets/product_card.dart';
import 'package:fashion_clothing/screens/widgets/sorting_container.dart';
import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:fashion_clothing/utils/images/images.dart';
import 'package:flutter/material.dart';
import 'package:fashion_clothing/utils/data/data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fashion_clothing/Icons/custom_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool sortTapped = false;
  @override
  Widget build(BuildContext context) {
    List definedData = Data.dataList;
    return Scaffold(
      bottomNavigationBar: const NavBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Location",
              style: TextStyle(color: MyColors.subtitleColor, fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: MyColors.primaryColor,
                    ),
                    Text(
                      "New York, USA",
                      style: TextStyle(fontSize: 15),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
                IconButton.filled(
                    style: IconButton.styleFrom(
                        backgroundColor: MyColors.borderColor),
                    onPressed: () {},
                    icon: const Icon(Icons.notifications))
              ],
            )
          ],
        ),
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(height: 0.5),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search_rounded,
                          color: MyColors.primaryColor,
                        ),
                        hintText: "Search",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: MyColors.borderColor,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton.filled(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/images/settingIcon.svg",
                      height: 25,
                    ),
                    style: IconButton.styleFrom(
                        backgroundColor: MyColors.primaryColor,
                        minimumSize: const Size(50, 50)),
                  )
                ],
              ),
              const SizedBox(height: 15),
              CarouselSlider(
                items: const [
                  ImageSlider(sliderImage: MyImages.banner1),
                  ImageSlider(sliderImage: MyImages.banner2),
                  ImageSlider(sliderImage: MyImages.banner3)
                ],
                options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See All",
                        style: TextStyle(color: MyColors.primaryColor),
                      ))
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryBox(
                    myIcon: CustomIcons.tshirt,
                    iconText: "T-Shirt",
                  ),
                  CategoryBox(
                    myIcon: CustomIcons.dress,
                    iconText: "Dress",
                  ),
                  CategoryBox(
                    myIcon: CustomIcons.tshirt,
                    iconText: "T-Shirt",
                  ),
                  CategoryBox(
                    myIcon: CustomIcons.dress,
                    iconText: "Dress",
                  )
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Flash Sale",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      const Text("Closing in :"),
                      Container(
                        height: 25,
                        width: 25,
                        color: const Color(0xffEEE5BD),
                        child: Text(
                          Data.time.hour.toString(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Text(" : "),
                      Container(
                        height: 25,
                        width: 25,
                        color: const Color(0xffEEE5BD),
                        child: Text(
                          Data.time.minute.toString(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Text(" : "),
                      Container(
                        height: 25,
                        width: 25,
                        color: const Color(0xffEEE5BD),
                        child: Text(
                          Data.time.minute.toString(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 45,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Data.sortingKeyword.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SortingContainer(index: index);
                    }),
              ),
              const SizedBox(height: 15),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 15),
                itemCount: definedData.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(
                    productName: definedData[index]['name'],
                    productRating: definedData[index]['rating'],
                    productPrice: definedData[index]['price'],
                    productImage: definedData[index]['images'][0],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
