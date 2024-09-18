import 'package:fashion_clothing/screens/widgets/cart_menu.dart';
import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:fashion_clothing/utils/data/data.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  bool isDismissing = false;
  List cartData = Data.myOrderCart;
  double? subTotal;
  double totalCost = 0;
  @override
  Widget build(BuildContext context) {
    totalCost = subTotal ?? 0 + 25.00;
    totalCost = totalCost - totalCost * 0.35;
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Cart"),
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
        body: ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: Data.myOrderCart.length,
            itemBuilder: (BuildContext context, int index) {
              subTotal = cartData[index]['price'];
              return Dismissible(
                confirmDismiss: (DismissDirection direction) async {
                  if (direction == DismissDirection.endToStart) {
                    return showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 250,
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Remove from Cart?",
                                      style: TextStyle(fontSize: 20)),
                                ),
                                const Divider(),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const SizedBox(width: 25),
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          alignment: Alignment.topCenter,
                                          image: AssetImage(
                                            cartData[index]['image'],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius:
                                            const BorderRadius.vertical(
                                          top: Radius.circular(10),
                                          bottom: Radius.circular(10),
                                        ),
                                      ),
                                      width: 70,
                                      height: 70,
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(cartData[index]['name']),
                                        Text(
                                            "Size : ${cartData[index]['size']}"),
                                        Text("${cartData[index]['price']}")
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: MyColors.borderColor,
                                        minimumSize: Size(
                                          MediaQuery.of(context).size.width *
                                              0.4,
                                          50,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "Cancel",
                                        style: TextStyle(
                                            color: MyColors.primaryColor),
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              MyColors.primaryColor,
                                          minimumSize: Size(
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                            50,
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            cartData.removeAt(index);
                                            Navigator.pop(context);
                                          });
                                        },
                                        child: const Text("Yes, Remove",
                                            style:
                                                TextStyle(color: Colors.white)))
                                  ],
                                )
                              ],
                            ),
                          );
                        });
                  }
                },
                onDismissed: (direction) => cartData.removeAt(index),
                background: Container(
                  color: const Color(0xffFAD7D9),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 280),
                    child: Icon(
                      Iconsax.trash,
                      color: Color(0xffE84B51),
                    ),
                  ),
                ),
                key: ValueKey<Map>(cartData[index]),
                child: CartMenu(
                  size: cartData[index]['size'],
                  name: cartData[index]['name'],
                  image: cartData[index]['image'],
                  price: cartData[index]['price'],
                  totalPrice: (value) {
                    double productPrice = value;
                    setState(() {
                      subTotal = productPrice;
                    });
                  },
                ),
              );
            }),
        bottomNavigationBar: BottomCheckOutSheet(subTotal: subTotal));
  }
}

class BottomCheckOutSheet extends StatelessWidget {
  const BottomCheckOutSheet({super.key, required this.subTotal});
  final double? subTotal;

  @override
  Widget build(BuildContext context) {
    double totalCost = subTotal ?? 0 + 25;
    totalCost -= totalCost * 0.35;
    return Data.myOrderCart.isNotEmpty
        ? Material(
            elevation: 10,
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: MyColors.borderColor)),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: MyColors.borderColor),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Promo Code",
                                contentPadding: EdgeInsets.only(left: 20)),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: MyColors.primaryColor),
                            onPressed: () {},
                            child: const Text(
                              "Apply",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Sub Total",
                              style: TextStyle(
                                  color: MyColors.secondaryColor, fontSize: 15),
                            ),
                            Text("\$$subTotal")
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Fee",
                              style: TextStyle(
                                  color: MyColors.secondaryColor, fontSize: 15),
                            ),
                            Text("\$25.00")
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Discount",
                              style: TextStyle(
                                  color: MyColors.secondaryColor, fontSize: 15),
                            ),
                            Text("-35%")
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Total Cost",
                              style: TextStyle(
                                  color: MyColors.secondaryColor, fontSize: 15),
                            ),
                            Text("\$$totalCost")
                          ],
                        ),
                        const SizedBox(height: 25),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: MyColors.primaryColor,
                                minimumSize: const Size(double.infinity, 50)),
                            onPressed: () {},
                            child: const Text(
                              "Proceed to Checkout",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : const Center(
            child: Text(
              "Cart is Empty",
              style: TextStyle(fontSize: 25),
            ),
          );
  }
}
