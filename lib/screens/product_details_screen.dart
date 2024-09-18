import 'package:fashion_clothing/screens/my_cart_screen.dart';
import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:fashion_clothing/utils/data/data.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductDetail extends StatefulWidget {
  final int index;
  const ProductDetail({super.key, required this.index});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String selectedColor = 'black';
  String? selectedSize;

  @override
  Widget build(BuildContext context) {
    Map productData = Data.dataList[widget.index];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage(productData['images'][0]),
                      width: double.infinity,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton.filled(
                                style: IconButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back_sharp),
                                color: Colors.black,
                                iconSize: 20,
                              ),
                              const Text(
                                "Product Details",
                                style: TextStyle(fontSize: 20),
                              ),
                              IconButton.filled(
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                ),
                                onPressed: () {},
                                icon: const Icon(Iconsax.heart_copy),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            height: 60,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: productData['images'].length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 60,
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 5, left: 5),
                                  child: Image.asset(
                                    productData['images'][index],
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${productData['category']}'s Style",
                          style:
                              const TextStyle(color: MyColors.secondaryColor),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: MyColors.ratingColor,
                            ),
                            Text(productData['rating'])
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      productData['name'],
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Product Details",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      productData['details'],
                      style: const TextStyle(fontSize: 13),
                    ),
                    const Divider(),
                    const Text(
                      "Select Size",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 5),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (String i in productData['size'])
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedSize = i;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                    color: selectedSize == i
                                        ? MyColors.primaryColor
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: MyColors.borderColor)),
                                child: Text(
                                  style: TextStyle(
                                      color: selectedSize == i
                                          ? Colors.white
                                          : Colors.black),
                                  i,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Select Color : $selectedColor",
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 50,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColor = "black";
                              });
                            },
                            child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                                child: selectedColor == 'black'
                                    ? IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                        ),
                                      )
                                    : Container(
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black),
                                      )),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColor = "white";
                              });
                            },
                            child: Container(
                                height: 40,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: selectedColor == 'white'
                                    ? IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.circle,
                                          color: Colors.black,
                                        ),
                                      )
                                    : Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                      )),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 50,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColor = "brown";
                              });
                            },
                            child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.brown,
                                ),
                                child: selectedColor == 'brown'
                                    ? IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                        ),
                                      )
                                    : Container(
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.brown),
                                      )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          border:
              Border.all(style: BorderStyle.solid, color: MyColors.borderColor),
        ),
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total Price",
                  style: TextStyle(color: MyColors.secondaryColor),
                ),
                Text(
                  "\$${productData['price']}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primaryColor,
                    maximumSize: const Size(170, 50)),
                onPressed: () {
                  selectedSize ??= productData['size'][0];
                  Map myCart = {
                    'name': productData['name'],
                    'size': selectedSize,
                    'color': selectedColor,
                    'price': productData['price'],
                    'image': productData['images'][0]
                  };
                  Data.myOrderCart.add(myCart);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MyCartScreen()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.bag_2,
                      color: Colors.white,
                    ),
                    Text(
                      "  Add to Cart",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
