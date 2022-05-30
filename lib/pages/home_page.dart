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
    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: kWhiteColor,
            onTap: (value) {
              if (value == 1) {
                //Navigator.pushNamed(context, '/wishlist');
              } else if (value == 2) {
                //Navigator.pushNamed(context, '/profile');
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_home.png',
                  width: 22,
                  color: kGreenColor,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_notification.png',
                  width: 22,
                ),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 22,
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_profile.png',
                  width: 22,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Column(),
            ],
          ),
        ],
      ),
    );
  }
}
