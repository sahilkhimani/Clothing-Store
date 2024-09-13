import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:fashion_clothing/utils/data/data.dart';
import 'package:flutter/material.dart';

class SortingContainer extends StatefulWidget {
  const SortingContainer({super.key, required this.index});
  final int index;

  @override
  State<SortingContainer> createState() => _SortingContainerState();
}

class _SortingContainerState extends State<SortingContainer> {
  bool sortTapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          sortTapped = !sortTapped;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 7),
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: sortTapped ? MyColors.primaryColor : Colors.white,
            borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(20), right: Radius.circular(20)),
            border: Border.all(color: MyColors.borderColor)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            Data.sortingKeyword[widget.index],
            style: TextStyle(color: sortTapped ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
