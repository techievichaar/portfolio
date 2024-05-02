import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        "Made by Linkan Kumar with Flutter 3.10.0",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: CustomColor.whiteSecondary,
        ),
      ),
    );
  }
}
