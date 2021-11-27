import 'package:flutter/material.dart';
import 'package:mangan_app/models/recommended_model.dart';
import 'package:mangan_app/models/special_model.dart';
import 'package:mangan_app/theme.dart';
import 'package:mangan_app/widgets/category_item.dart';
import 'package:mangan_app/widgets/recommended_item.dart';
import 'package:mangan_app/widgets/special_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            // * HEADER
            Padding(
              padding: EdgeInsets.only(
                top: 24,
                left: 22,
                right: 22,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'What would you\nlike to order ?',
                    style: blackTextStyle.copyWith(
                      fontSize: 22,
                      fontWeight: semiBold,
                      letterSpacing: 1,
                    ),
                  ),
                  Image.asset(
                    'assets/profile.png',
                    width: 56,
                  ),
                ],
              ),
            ),
            // * SEARCH
            Container(
              width: double.infinity,
              height: 52,
              margin: EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 24,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search your favorite food',
                    hintStyle: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 24,
                      color: kGreyColor,
                    ),
                  ),
                ),
              ),
            ),
            // * CATEGORY
            Container(
              height: 42,
              margin: EdgeInsets.only(left: 22),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryItem(
                    imageUrl: 'assets/category-1.png',
                    name: 'Fast Food',
                  ),
                  CategoryItem(
                    imageUrl: 'assets/category-2.png',
                    name: 'Sushi',
                    isClicked: true,
                  ),
                  CategoryItem(
                    imageUrl: 'assets/category-3.png',
                    name: 'Drink',
                  ),
                  CategoryItem(
                    imageUrl: 'assets/category-4.png',
                    name: 'Bread',
                  ),
                ],
              ),
            ),
            // * RECOMMENDED
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 22,
              ),
              child: Text(
                'Recommended',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              height: 230,
              margin: EdgeInsets.only(left: 22, bottom: 24, top: 24),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RecommendedItem(
                    RecommendedModel(
                      imageUrl: 'assets/recommended-1.png',
                      name: 'Sushi Wuenak',
                      jenisIkan: 'Beunteur Fish🍣',
                      price: '50.000',
                    ),
                  ),
                  RecommendedItem(
                    RecommendedModel(
                      imageUrl: 'assets/recommended-2.png',
                      name: 'Sushi Mighty',
                      jenisIkan: 'Cupang Fish 🍣',
                      price: '90.000',
                    ),
                  ),
                ],
              ),
            ),
            // * SPECIAL
            Padding(
              padding: EdgeInsets.only(
                left: 22,
              ),
              child: Text(
                'Special For You',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Column(
              children: [
                SpecialItem(
                  SpecialModel(
                    imageUrl: 'assets/special-1.png',
                    name: 'Sushi Damoty',
                    price: '12.000',
                  ),
                ),
                SpecialItem(
                  SpecialModel(
                    imageUrl: 'assets/special-2.png',
                    name: 'Sushi Jomblo',
                    price: '4.000',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 75,
            ),
          ],
        ),
      ),
      // * BOTTOM NAVBAR
      floatingActionButton: Container(
        width: double.infinity,
        height: 80,
        color: kWhiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/icon-home.png',
              width: 24,
            ),
            Image.asset(
              'assets/icon-cart.png',
              width: 24,
            ),
            Image.asset(
              'assets/icon-notification.png',
              width: 24,
            ),
            Image.asset(
              'assets/icon-setting.png',
              width: 24,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
