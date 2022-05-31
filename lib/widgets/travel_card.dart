import 'package:flutter/material.dart';
import 'package:submission_dicoding_tedo_hc/pages/detail_page.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';

class TravelCard extends StatelessWidget {
  final String imageUrl;
  final String price;
  final String name;
  final String nation;
  final String day;
  final bool isWishlist;

  const TravelCard({
    Key? key,
    required this.imageUrl,
    required this.price,
    required this.name,
    required this.nation,
    required this.day,
    this.isWishlist = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              imageUrl: imageUrl,
              name: name,
              price: price,
              day: day,
              ratting: '4.5',
            ),
          ),
        );
      },
      child: Container(
        width: 164,
        height: 221,
        margin: const EdgeInsets.only(right: 25),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 144,
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 9,
                        ),
                        child: Image.asset(
                          'assets/img_wishlist_active.png',
                          width: 22,
                          height: 22,
                        ),
                      ),
                      Container(
                        width: 48,
                        height: 24,
                        margin: const EdgeInsets.only(
                          right: 9,
                          top: 67,
                        ),
                        padding: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.38),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Text(
                          '\$ ' + price,
                          style: whiteTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Text(
              name,
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Row(
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
                ),
                Container(
                  width: 48,
                  height: 25,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(11)),
                    color: kLightGreyColor,
                  ),
                  child: Text(
                    day,
                    style: greyTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
