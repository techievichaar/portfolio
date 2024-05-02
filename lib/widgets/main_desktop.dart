import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/utils/download_cv_button.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi,\nI'm Linkan Kumar\nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 250,
                child: DownloadCvButton(),
              ),
            ],
          ),
          Image.asset(
            "assets/img.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
