// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late FToast fToast;
  final usernameController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool isPasswordError = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 84),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login to your\naccount',
              style: greenTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 4),
                  width: 87,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: kGreenColor,
                  ),
                ),
                Container(
                  width: 8,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: kGreenColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 48),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: kLightGreyColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: TextFormField(
          controller: usernameController,
          decoration: InputDecoration.collapsed(
            hintText: 'Username',
            hintStyle: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget passwordInput() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 32),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: kLightGreyColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Password',
                      hintStyle: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.visibility_outlined,
                  color: kGreyColor,
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget rememberCheckbox() {
      return Container(
        margin: EdgeInsets.only(top: 32),
        child: Row(
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                onChanged: (bool? value) {},
                value: false,
              ),
            ),
            SizedBox(width: 12),
            Text('Remember me')
          ],
        ),
      );
    }

    Widget errorToast() {
      return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'Email atau Password Salah, silahkan masukan admin@email.com dan password admin',
          style: whiteTextStyle.copyWith(
            fontSize: 14,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget loginButton() {
      return Container(
        margin: EdgeInsets.only(top: 32),
        height: 56,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            setState(() {
              isLoading = true;
            });

            Future.delayed(Duration(seconds: 2), () {
              setState(() {
                isLoading = false;
              });
              if (usernameController.text != 'admin' ||
                  passwordController.text != 'admin') {
                setState(() {
                  isPasswordError = true;
                });
                fToast.showToast(
                  child: errorToast(),
                  toastDuration: Duration(seconds: 4),
                  gravity: ToastGravity.BOTTOM,
                );
              } else {
                Navigator.restorablePushNamedAndRemoveUntil(
                    context, '/main', (Route<dynamic> route) => false);
              }
            });
          },
          style: TextButton.styleFrom(
            backgroundColor: kGreenColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: isLoading
              ? CircularProgressIndicator(
                  color: kWhiteColor,
                  backgroundColor: kGreyColor,
                )
              : Text(
                  'Login',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
        ),
      );
    }

    Widget registerButton() {
      return Container(
        margin: EdgeInsets.only(top: 48, bottom: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don`t have an account ?',
              style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Register',
                style: greenTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          usernameInput(),
          passwordInput(),
          rememberCheckbox(),
          loginButton(),
          registerButton(),
        ],
      ),
    );
  }
}
