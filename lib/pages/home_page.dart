import 'package:flutter/material.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          Container(
            width: 54,
            height: 54,
            margin: const EdgeInsets.only(right: 17),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              image: DecorationImage(
                image: AssetImage('assets/profile_picture.png'),
              ),
            ),
          ),
          Text(
            'Hello Vaninska',
            style: blackTextStyle.copyWith(
              fontSize: 15,
              fontWeight: semiBold,
            ),
          ),
        ],
      );
    }

    Widget searchArea() {
      return Container(
        margin: const EdgeInsets.only(top: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore the \nBeautiful World!',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 23),
            Container(
              width: 255,
              height: 54,
              decoration: BoxDecoration(
                color: kLightGreyColor,
                borderRadius: BorderRadius.circular(21),
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 21,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ignore: prefer_const_constructors
                    Icon(
                      Icons.search,
                      size: 14,
                    ),
                    const SizedBox(width: 11),
                    Text(
                      'Search Places',
                      style: greyTextStyle.copyWith(
                        fontSize: 11,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 45,
      ),
      child: ListView(
        children: [
          header(),
          searchArea(),
        ],
      ),
    );
  }
}
