// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/constants/sns_links.dart';
import 'package:portfolio/widgets/custom_textfield.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          // Title
          const Text(
            "Contact Me",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),

          // Contact Me Form and Button
          ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 700,
                maxHeight: 100,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth >= desktopWidth) {
                    return buildNameEmailFieldDeskTop();
                  }
                  return buildNameEmailFieldMobile();
                },
              )),
          // Message
          const SizedBox(height: 15),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: const CustomTextField(
              hintText: "Your Message",
              maxLines: 15,
            ),
          ),
          const SizedBox(height: 20),
          // Send Button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 244, 167, 36),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(height: 15),
          // SNS Icons Button Links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkedIn]);
                },
                child: Image.asset("assets/linkedIn.png", height: 20),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset("assets/github.png", height: 20),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.facebook]);
                },
                child: Image.asset("assets/facebook.png", height: 20),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.instagram]);
                },
                child: Image.asset("assets/instagram.png", height: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailFieldDeskTop() {
    return const Row(
      children: [
        Flexible(
          // Name
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        SizedBox(width: 15),

        // Email
        Flexible(
          child: CustomTextField(
            hintText: "Your Email",
          ),
        ),
      ],
    );
  }

  Row buildNameEmailFieldMobile() {
    return const Row(
      children: [
        Flexible(
          // Name
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        SizedBox(width: 15),

        // Email
        Flexible(
          child: CustomTextField(
            hintText: "Your Email",
          ),
        ),
      ],
    );
  }
}
