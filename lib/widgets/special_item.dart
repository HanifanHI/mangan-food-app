import 'package:flutter/material.dart';
import 'package:mangan_app/models/special_model.dart';

import '../theme.dart';

class SpecialItem extends StatelessWidget {
  final SpecialModel specialModel;

  SpecialItem(this.specialModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.only(
        left: 22,
        right: 22,
        bottom: 12,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 303,
              height: 80,
              padding: EdgeInsets.only(
                top: 15,
                bottom: 15,
                right: 12,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 28,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          specialModel.name,
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
                        Row(
                          children: [
                            Text(
                              'Rp ${specialModel.price}',
                              style: redTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Rp28.000',
                              style: greyTextStyle.copyWith(
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/icon-add-white.png',
                    width: 30,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(
                    specialModel.imageUrl,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
