import 'package:fashion_clothing/screens/product_details_screen.dart';
import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:fashion_clothing/utils/data/data.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductCard extends StatefulWidget {
  final String productName;
  final String productRating;
  final double productPrice;
  final String productImage;
  final int index;
  const ProductCard(
      {super.key,
      required this.productName,
      required this.productRating,
      required this.productPrice,
      required this.productImage,
      required this.index});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ProductDetail(
                      index: widget.index,
                    )));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  widget.productImage,
                  height: 180,
                  width: double.infinity,
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: MyColors.borderColor),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            tapped = !tapped;
                            if (tapped) {
                              Data.favoriteProducts
                                  .add(Data.dataList[widget.index]);
                            } else {
                              Data.favoriteProducts.removeAt(widget.index);
                            }
                          });
                        },
                        icon: Icon(
                          tapped
                              ? Iconsax.heart
                              : Icons.favorite_border_outlined,
                          color: tapped
                              ? MyColors.primaryColor
                              : MyColors.primaryColor,
                        )),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text(
                  widget.productName,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: MyColors.ratingColor,
                  ),
                  Text(
                    widget.productRating,
                    style:
                        const TextStyle(color: Color(0xffb8b8b8), fontSize: 15),
                  )
                ],
              ),
            ],
          ),
          Text(
            "\$ ${widget.productPrice}",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
