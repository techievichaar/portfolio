// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/utils/project_utils.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });

  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // projects Image
          Image.asset(
            project.image,
            height: 150,
            width: 250,
            fit: BoxFit.cover,
          ),
          // TITLE
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 5),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),

          // Subtitle

          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          // footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  'Available on:',
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                // Icon Button
                if (project.androLink != null)
                  InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.androLink]);
                      },
                      child: Image.asset('assets/android.png', height: 20)),
                if (project.iosLink != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.iosLink]);
                      },
                      child: Image.asset('assets/ios-logo.png', height: 15),
                    ),
                  ),
                if (project.webLink != null)
                  InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.webLink]);
                      },
                      child: Image.asset('assets/web.webp', height: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
