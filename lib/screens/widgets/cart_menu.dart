import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CartMenu extends StatefulWidget {
  const CartMenu(
      {super.key,
      required this.size,
      required this.name,
      required this.image,
      required this.price,
      required this.totalPrice});
  final String name;
  final String size;
  final String image;
  final double price;
  final Function(double) totalPrice;

  @override
  State<CartMenu> createState() => _CartMenuState();
}

class _CartMenuState extends State<CartMenu> {
  int quantity = 1;
  double updatedPrice = 0;
  @override
  Widget build(BuildContext context) {
    updatedPrice = widget.price;
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 10),
      child: SizedBox(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(
                        widget.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(10),
                      bottom: Radius.circular(10),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name),
                      Text(
                        "Size: ${widget.size}",
                        style: const TextStyle(color: MyColors.secondaryColor),
                      ),
                      Text("\$${widget.price}")
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    if (quantity != 1)
                      IconButton(
                        onPressed: () {
                          setState(() {
                            quantity--;
                            updatedPrice *= quantity;
                            widget.totalPrice(updatedPrice);
                          });
                        },
                        icon: const Icon(Iconsax.minus),
                      ),
                    Text("$quantity"),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          quantity++;
                          updatedPrice *= quantity;
                          widget.totalPrice(updatedPrice);
                        });
                      },
                      icon: const Icon(
                        Iconsax.add,
                        color: MyColors.primaryColor,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
