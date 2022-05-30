import 'dart:async';

import 'package:flutter/material.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreenColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 98,
              height: 82,
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(right: 16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/travello_logo.png',
                  ),
                ),
              ),
            ),
            Text(
              'Travellou',
              style: whiteTextStyle.copyWith(
                fontSize: 36,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
