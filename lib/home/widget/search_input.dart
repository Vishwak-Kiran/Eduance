import 'package:flutter/material.dart';
import 'package:eduance/constants/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(color: kFontLight.withOpacity(0.3), width: 2)),
            child: TextField(
              cursorColor: kFontLight,
              decoration: InputDecoration(
                fillColor: kFontLight.withOpacity(0.1),
                filled: true,
                contentPadding: const EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: 'Search for history, classes,...',
                hintStyle: const TextStyle(color: kFontLight),
              ),
            )),
        Positioned(
          right: 45,
          top: 35,
          child: Container(
            decoration: BoxDecoration(
                color: kAccent, borderRadius: BorderRadius.circular(8)),
          ),
        )
      ],
    );
  }
}
