// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';
import 'package:submission_dicoding_tedo_hc/widgets/primary_button.dart';

class DetailPage extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String day;
  final String ratting;

  const DetailPage({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.day,
    required this.ratting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 60,
              margin: EdgeInsets.only(
                top: 36,
                left: 10,
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'assets/btn_back.png',
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 60,
              margin: EdgeInsets.only(
                top: 36,
                right: 10,
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'assets/btn_wishlist.png',
              ),
            ),
          ),
        ],
      );
    }

    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 436,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(imageUrl),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 338),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //? NOTE : TITLE AND PRICE
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(36),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //? NOTE: TITLE
                      Text(
                        name,
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(width: 28),
                      Container(
                        height: 56,
                        decoration: BoxDecoration(
                          color: kLightGreyColor,
                          borderRadius: BorderRadius.all(Radius.circular(11)),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Text(
                              '\$ $price ',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: semiBold,
                              ),
                            ),
                            Text(
                              '/person',
                              style: greyTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: semiBold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 17),
                  Text(
                    'Overview',
                    style: greenTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 16),
                  //Duration and Stars
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon_time_detail.png',
                        width: 32,
                        height: 32,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Duration',
                            style: greyTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            day,
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/icon_ratting_detail.png',
                        width: 32,
                        height: 32,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rating',
                            style: greyTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            '$ratting out of 5',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 26),
                  Text(
                    'Have you ever been on holiday to the Greek\nislands before? There’s a good chance you may\nhave come across Santorini before. ',
                    style: greyTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 32),
                  PrimaryButton(),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            content(),
            backButton(),
          ],
        ),
      ),
    );
  }
}
