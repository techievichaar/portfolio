import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widgets/contact_me.dart';
import 'package:portfolio/widgets/drawer.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/projects_section.dart';
import 'package:portfolio/widgets/skills_desktop.dart';
import 'package:portfolio/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    // ignore: unused_local_variable
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= desktopWidth
              ? null
              : DrawerMobile(onNavItemTap: (int navIndex) {
                  // call function
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                }),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),
                // MAIN or HEADER SECTION
                if (constraints.maxWidth >= desktopWidth)
                  HeaderDesktop(onNavMenuTap: (int navIndex) {
                    // call function
                    scrollToSection(navIndex);
                  })
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                if (constraints.maxWidth >= desktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),
                // SKILLS SECTION
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  color: CustomColor.bgLight1,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // title
                      const Text(
                        "What I can Do",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      const SizedBox(height: 50),
                      // platformm skill
                      if (constraints.maxWidth >= mediumDesktopWidth)
                        const SkillsDesktop()
                      else
                        const SkillsMobile(),
                    ],
                  ),
                ),
                // // PROJECTS SECTION
                ProjectsSection(
                  key: navbarKeys[2],
                ),
                // CONTACT SECTION
                ContactSection(
                  key: navbarKeys[3],
                ),
                // FOOTER SECTION
                const SizedBox(height: 30),
                const FooterWidget(),
              ],
            ),
          ));
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      //open a blogpage

      return;
    }

    final key = navbarKeys[navIndex];

    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
