// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  Widget settingItem({required String iconUrl, required String content}) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                iconUrl,
                width: 20,
                height: 20,
              ),
              SizedBox(width: 30),
              Text(
                content,
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          Icon(
            Icons.keyboard_arrow_right,
            color: kGreyColor,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/profile_picture.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Admin',
                    style:
                        blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'user',
                    style: greyTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: kGreyColor),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: settingItem(
                      iconUrl: 'assets/icon_profile_setting_page.png',
                      content: 'Profile',
                    ),
                  ),
                  SizedBox(height: 25),
                  settingItem(
                    iconUrl: 'assets/icon_setting_setting_page.png',
                    content: 'Setting',
                  ),
                  SizedBox(height: 25),
                  settingItem(
                    iconUrl: 'assets/icon_help_setting_page.png',
                    content: 'Help',
                  ),
                  SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/sign-in', (route) => false);
                    },
                    child: settingItem(
                      iconUrl: 'assets/icon_logout_setting_page.png',
                      content: 'Logout',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
