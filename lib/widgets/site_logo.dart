// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    required this.onTap,
  });
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Text(
        "LK",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: CustomColor.yellowPrimary,
        ),
      ),
    );
  }
}
