import 'package:flutter/material.dart';

import '../theme.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool isClicked;

  CategoryItem({
    required this.imageUrl,
    required this.name,
    this.isClicked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106,
      height: 42,
      margin: EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
        color: isClicked ? kBlackColor : kLightColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 14,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            name,
            style: isClicked
                ? whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  )
                : blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
          )
        ],
      ),
    );
  }
}
