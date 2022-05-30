import 'package:flutter/material.dart';

import '../theme.dart';

class OnBoardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const OnBoardingItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          const SizedBox(height: 100),
          Image.asset(
            imageUrl,
            width: double.infinity,
          ),
          const SizedBox(height: 127),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 26,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: greyTextStyle.copyWith(
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
