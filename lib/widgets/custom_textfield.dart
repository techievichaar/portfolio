import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.maxLines = 1,
      this.hintText,
      this.namecontroller,
      this.emailcontroller,
      this.messagecontroller});

  final TextEditingController? namecontroller;
  final TextEditingController? emailcontroller;
  final TextEditingController? messagecontroller;
  final int maxLines;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      style: const TextStyle(
        color: CustomColor.scaffoldBg,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: CustomColor.hintDark,
        ),
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: CustomColor.whiteSecondary,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
      ),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
