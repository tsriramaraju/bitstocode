import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:user_app/components/button/primary_button.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/constants/illustrations.dart';
import 'package:user_app/screens/skillExploration/pages/role_page.dart';

class CategoryPage extends StatelessWidget {
  final String title;
  final String description;
  const CategoryPage(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: KMediumShadeColor),
                ),
                Text(
                  title,
                  style: GoogleFonts.delius(
                    fontSize: 24,
                    // fontWeight: FontWeight.w600,
                    color: KBrandColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                description,
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: KDarkShadeColor,
                ),
              ),
            ),
            Stack(
              fit: StackFit.loose,
              children: [
                const SizedBox(
                  height: 150,
                  width: double.infinity,
                ),
                Positioned(
                  left: 0,
                  top: 17.5,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 310,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.only(
                        left: 15, top: 5, bottom: 5, right: 35),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: KMediumShadeColor),
                    child: Text(
                      "Based on your quiz responses, you have an 85% compatibility with this career category.",
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: KLightShadeColor,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  child: Container(
                    height: 125,
                    width: 125,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: KMediumShadeColor,
                    ),
                    child: Container(
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: KLightShadeColor,
                      ),
                      child: CircularStepProgressIndicator(
                        totalSteps: 4,
                        currentStep: 3,
                        width: 100,
                        roundedCap: (_, isSelected) => isSelected,
                        selectedColor: KBrandColor,
                        unselectedColor: Colors.white,
                        child: Center(
                          child: Text(
                            "85%",
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              color: KDarkShadeColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const CategoryTile(
              title: "Front-End Developer",
              description:
                  "Develop the user-facing components of websites and applications.",
              salary: "₹7 lakhs - ₹15 lakhs",
              illustration: KFrontend,
            ),
            const SizedBox(height: 10),
            const CategoryTile(
              title: "Backend-End Developer",
              description:
                  "Design and implement the server-side logic for websites and applications.",
              salary: "₹5 lakhs - ₹12 lakhs",
              illustration: KBackend,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String title;
  final String description;
  final String salary;
  final String illustration;
  const CategoryTile({
    super.key,
    required this.title,
    required this.description,
    required this.salary,
    required this.illustration,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: KBrandColor.withOpacity(0.25),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 1),
              ),
            ],
          ),
        ),
        Positioned(
          top: 10,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.nunito(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: KBrandColor,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: 400,
                child: Text(
                  description,
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: KDarkShadeColor,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                salary,
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: KMediumShadeColor,
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: 180,
                child: PrimaryButton(
                  text: "Know More",
                  onClick: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RolePage(),
                      ),
                    );
                  },
                  icon: true,
                  color: ColorPallet.accent,
                  small: true,
                ),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 10,
            right: 20,
            child: SvgPicture.asset(
              illustration,
              height: 120,
              width: 120,
            ))
      ],
    );
  }
}
