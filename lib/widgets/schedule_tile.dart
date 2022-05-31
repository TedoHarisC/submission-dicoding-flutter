import 'package:flutter/material.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';

class ScheduleTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String nation;

  const ScheduleTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.nation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      height: 81,
      decoration: BoxDecoration(
        color: kLightGreyColor,
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.all(13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 74,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon_location.png',
                        width: 9,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        nation,
                        style: greyTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 70,
            height: 32,
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(26)),
              color: kGreenColor,
            ),
            child: Text(
              'Joined',
              style: whiteTextStyle.copyWith(
                fontSize: 11,
                fontWeight: semiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
