import 'package:fashion_clothing/screens/widgets/navbar.dart';
import 'package:fashion_clothing/screens/widgets/product_card.dart';
import 'package:fashion_clothing/screens/widgets/sorting_container.dart';
import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:fashion_clothing/utils/data/data.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Wishllist"),
        centerTitle: true,
        leading: IconButton.outlined(
          style: OutlinedButton.styleFrom(
            shape: const CircleBorder(),
            side: const BorderSide(color: MyColors.borderColor),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 45,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Data.sortingKeyword.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SortingContainer(index: index);
                  },
                ),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.62,
                    crossAxisSpacing: 15),
                itemCount: Data.dataList.length,
                itemBuilder: (BuildContext context, int index) {
                  if (Data.dataList[index]['favorite']) {
                    return ProductCard(
                      productName: Data.dataList[index]['name'],
                      productRating: Data.dataList[index]['rating'],
                      productPrice: Data.dataList[index]['price'],
                      productImage: Data.dataList[index]['images'][0],
                      favorite: Data.dataList[index]['favorite'],
                      index: index,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
