import 'package:flutter/material.dart';
import 'package:mangan_app/models/recommended_model.dart';

import '../theme.dart';

class RecommendedItem extends StatelessWidget {
  final RecommendedModel recommendedModel;

  RecommendedItem(this.recommendedModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 230,
      margin: EdgeInsets.only(right: 12),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 200,
              height: 170,
              padding: EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: 12,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 72,
                        ),
                        Text(
                          recommendedModel.name,
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          recommendedModel.jenisIkan,
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Rp ${recommendedModel.price}',
                          style: redTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/icon-add-black.png',
                    width: 30,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              recommendedModel.imageUrl,
              width: 176,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }
}
