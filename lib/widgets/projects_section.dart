// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/utils/project_utils.dart';
import 'package:portfolio/widgets/projects_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          // WORK PROJECTS title
          const Text(
            "Work Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),

          const SizedBox(height: 50),
          // WORK PROJECTS card
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCardWidget(project: workProjectUtils[i]),
              ],
            ),
          ),
          const SizedBox(height: 80),

          /// Hobby Projects
          const Text(
            "Hobby Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          // Hobby PROJECTS card
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCardWidget(project: hobbyProjectUtils[i]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
