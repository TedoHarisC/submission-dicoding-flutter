// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:submission_dicoding_tedo_hc/cubit/travel_cubit.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';
import 'package:submission_dicoding_tedo_hc/widgets/menu_travel_navigation_item.dart';
import 'package:submission_dicoding_tedo_hc/widgets/schedule_tile.dart';
import 'package:submission_dicoding_tedo_hc/widgets/travel_card.dart';

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
            'Hello Admin',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/search-page');
                  },
                  child: Container(
                    width: 235,
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
                ),
                const SizedBox(width: 12),
                Image.asset(
                  'assets/btn_filter.png',
                  width: 72,
                  height: 72,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget travelPlace() {
      return Container(
        margin: const EdgeInsets.only(top: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Travel Places',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Show more >',
                  style: greyTextStyle.copyWith(
                    fontSize: 11,
                  ),
                )
              ],
            ),
            const SizedBox(height: 17),
            Row(
              children: [
                SizedBox(
                  width: 24,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: BlocBuilder<TravelCubit, int>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            MenuTravelNavigationItem(index: 0, menu: 'All'),
                            MenuTravelNavigationItem(index: 1, menu: 'Latest'),
                            MenuTravelNavigationItem(index: 2, menu: 'Popular')
                          ],
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        TravelCard(
                          imageUrl: 'assets/destination_1.png',
                          price: '750',
                          name: 'City Rome',
                          nation: 'Italy',
                          day: '5 Days',
                        ),
                        TravelCard(
                          imageUrl: 'assets/destination_2.png',
                          price: '850',
                          name: 'Santoriny Island',
                          nation: 'Greece',
                          day: '5 Days',
                        ),
                        TravelCard(
                          imageUrl: 'assets/destination_3.png',
                          price: '890',
                          name: 'Mount ALbrus',
                          nation: 'Italy',
                          day: '7 Days',
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget mySchedule() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Schedule',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Show more >',
                  style: greyTextStyle.copyWith(
                    fontSize: 11,
                  ),
                )
              ],
            ),
            const SizedBox(height: 23),
            const ScheduleTile(
              imageUrl: 'assets/destination_3.png',
              name: 'Mount ALbrus',
              nation: 'Italy',
            ),
            const SizedBox(height: 10),
            const ScheduleTile(
              imageUrl: 'assets/destination_4.png',
              name: 'Burj Khalifa',
              nation: 'Dubai',
            ),
            const SizedBox(height: 10),
            const ScheduleTile(
              imageUrl: 'assets/destination_2.png',
              name: 'Santoriny Island',
              nation: 'Greece',
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
        bottom: 100,
      ),
      child: ListView(
        children: [
          header(),
          searchArea(),
          travelPlace(),
          mySchedule(),
        ],
      ),
    );
  }
}
