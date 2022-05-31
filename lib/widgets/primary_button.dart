import 'package:flutter/material.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';

class PrimaryButton extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final String text;
  final double fontSize;
  const PrimaryButton({
    Key? key,
    this.width = 335,
    this.height = 69,
    this.borderRadius = 16,
    this.text = '',
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
        color: kGreenColor,
      ),
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        'Book Now',
        style: whiteTextStyle.copyWith(
          fontSize: 16,
          fontWeight: semiBold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
