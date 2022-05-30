import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:submission_dicoding_tedo_hc/cubit/page_cubit.dart';
import 'package:submission_dicoding_tedo_hc/pages/home_page.dart';
import 'package:submission_dicoding_tedo_hc/pages/main_page.dart';
import 'package:submission_dicoding_tedo_hc/pages/notification_page.dart';
import 'package:submission_dicoding_tedo_hc/pages/onboarding_page.dart';
import 'package:submission_dicoding_tedo_hc/pages/profil_page.dart';
import 'package:submission_dicoding_tedo_hc/pages/sign_in_page.dart';
import 'package:submission_dicoding_tedo_hc/pages/splash_page.dart';
import 'package:submission_dicoding_tedo_hc/pages/wishlist_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/onboarding': (context) => const OnBoardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/main': (context) => const MainPage(),
          '/home': (context) => const HomePage(),
          '/notification': (context) => const NotificationPage(),
          '/wishlist': (context) => const WishlistPage(),
          '/profil': (context) => const ProfilPage(),
        },
      ),
    );
  }
}
