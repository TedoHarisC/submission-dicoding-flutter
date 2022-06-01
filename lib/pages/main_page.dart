// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:submission_dicoding_tedo_hc/cubit/page_cubit.dart';
import 'package:submission_dicoding_tedo_hc/pages/home_page.dart';
import 'package:submission_dicoding_tedo_hc/pages/profil_page.dart';
import 'package:submission_dicoding_tedo_hc/pages/wishlist_page.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';
import '../widgets/custom_button_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const WishlistPage();
        case 2:
          return const ProfilPage();
        default:
          return const HomePage();
      }
    }

    Widget customButtonNavigation() {
      return Align(
        child: Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(39),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CustomButtonNavigationItem(
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_wishlist.png',
                index: 1,
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_profile.png',
                index: 2,
              ),
            ],
          ),
        ),
        alignment: Alignment.bottomCenter,
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              buildContent(currentIndex),
              customButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
