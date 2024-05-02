// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/utils/download_cv_button.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.only(
        left: 40,
        top: 40,
      ),
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // avatar image
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6)
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/img.png',
              width: screenWidth,
            ),
          ),
          const SizedBox(height: 30),
          // intro text
          const Text(
            "Hi,\nI'm Linkan Kumar\nA Flutter Developer",
            style: TextStyle(
              fontSize: 24.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 10),
          // Download CV Buttton
          const SizedBox(width: 190.0, child: DownloadCvButton()),
        ],
      ),
    );
  }
}
