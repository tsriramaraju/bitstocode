import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/components/button/primary_button.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/home.dart';

class QuizResultPage extends StatelessWidget {
  const QuizResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KDarkShadeColor,
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Your Quiz Results Are In!",
                  style: GoogleFonts.comfortaa(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: KLightShadeColor,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "You demonstrated a strong inclination towards problem-solving and creativity. Here are some tech roles that you could excel in:",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: KLightShadeColor,
                    height: 1.3,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 35),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: KLightShadeColor,
                  ),
                  child: const Column(
                    children: [
                      Tile(
                        title: "Software Developer",
                        percentage: "85",
                      ),
                      SizedBox(height: 20),
                      Tile(
                        title: "Game Developer",
                        percentage: "80",
                      ),
                      SizedBox(height: 20),
                      Tile(
                        title: "UI/UX Designer",
                        percentage: "78",
                      )
                    ],
                  )),
              const SizedBox(height: 25),
              PrimaryButton(
                text: "View Roles",
                width: 240,
                color: ColorPallet.accent,
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
            ])));
  }
}

class Tile extends StatelessWidget {
  final String title;
  final String percentage;
  const Tile({
    super.key,
    required this.title,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: KLightShadeColor,
          border: Border.all(color: KMediumShadeColor, width: 2)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 20,
              color: KBrandColor,
              height: 1.3,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      percentage,
                      style: GoogleFonts.nunito(
                        fontSize: 32,
                        color: KAccentColor,
                      ),
                    ),
                    const SizedBox(
                        width: 4), // Add spacing between "85" and "%"
                    Text(
                      '%',
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        color: KAccentColor,
                      ),
                    ),
                  ],
                ),
                // Add spacing between "85%" and "match"
                Text(
                  'match',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: KMediumShadeColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
