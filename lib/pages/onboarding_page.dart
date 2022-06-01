import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';

import '../widgets/onboarding_item.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  CarouselController controller = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: const [
                OnBoardingItem(
                  imageUrl: 'assets/onboarding1-picture.png',
                  title: 'Jelajahi Dunia',
                  subtitle:
                      'Pilih destinasi wisata mu seluruh dunia di dalam satu aplikasi',
                ),
                OnBoardingItem(
                  imageUrl: 'assets/onboarding2-picture.png',
                  title: 'Pemesanan Mudah',
                  subtitle:
                      'Pemesanan perjalanan yang mudah, hanya dengan santai di rumah',
                ),
                OnBoardingItem(
                  imageUrl: 'assets/onboarding3-picture.png',
                  title: 'Fitur Lengkap',
                  subtitle:
                      'Fitur lengkap aplikasi memudahkan mu dalam pemesanan liburanmu',
                ),
              ],
              options: CarouselOptions(
                  height: double.infinity,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  initialPage: currentIndex,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              carouselController: controller,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    controller.animateToPage(2);
                  },
                  child: Text(
                    'SKIP',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            currentIndex == 0 ? kGreenColor : kLightGreyColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            currentIndex == 1 ? kGreenColor : kLightGreyColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            currentIndex == 2 ? kGreenColor : kLightGreyColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    if (currentIndex == 2) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/sign-in', (Route<dynamic> route) => false);
                    } else {
                      controller.nextPage();
                    }
                  },
                  child: Text(
                    'NEXT',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 29),
        ],
      ),
    );
  }
}
