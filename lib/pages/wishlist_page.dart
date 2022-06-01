// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';
import 'package:submission_dicoding_tedo_hc/widgets/skeleton_item.dart';
import 'package:submission_dicoding_tedo_hc/widgets/wishlist_item_card.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  bool isLoading = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget buildLoading() {
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 18,
        runSpacing: 18,
        children: const [
          SkeletonItem(),
          SkeletonItem(),
          SkeletonItem(),
          SkeletonItem(),
          SkeletonItem(),
          SkeletonItem(),
          SkeletonItem(),
          SkeletonItem(),
          SkeletonItem(),
          SkeletonItem(),
        ],
      );
    }

    Widget buildGrid() {
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        runSpacing: 10,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          WishlistItemCard(
            imageUrl: 'assets/destination_1.png',
            price: '750',
            name: 'City Rome',
            nation: 'Italy',
            day: '5 Days',
          ),
          WishlistItemCard(
            imageUrl: 'assets/destination_2.png',
            price: '850',
            name: 'Santoriny Island',
            nation: 'Greece',
            day: '5 Days',
          ),
          WishlistItemCard(
            imageUrl: 'assets/destination_3.png',
            price: '890',
            name: 'Mount ALbrus',
            nation: 'Italy',
            day: '7 Days',
          ),
          WishlistItemCard(
            imageUrl: 'assets/destination_4.png',
            price: '1080',
            name: 'Burj Khalifa',
            nation: 'Dubai',
            day: '9 Days',
          )
        ],
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBar(
          elevation: 0,
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: kBlackColor,
                ),
              ),
              SizedBox(width: 18),
              Text(
                'Wishlist',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              Spacer(),
              // Image.asset(
              //   'assets/icon_search.png',
              //   width: 22,
              // ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(height: 30),
          isLoading ? buildLoading() : buildGrid(),
        ],
      ),
    );
  }
}
