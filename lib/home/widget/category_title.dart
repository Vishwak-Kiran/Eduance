import 'package:flutter/material.dart';
import 'package:eduance/constants/colors.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  CategoryTitle(this.leftText, this.rightText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: kFont,
            ),
          ),
          Text(
            rightText,
            style: const TextStyle(fontSize: 16, color: kFontLight),
          )
        ],
      ),
    );
  }
}
