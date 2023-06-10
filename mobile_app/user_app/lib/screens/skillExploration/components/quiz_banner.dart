import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:user_app/constants/animations.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/screens/quiz/quiz.dart';

class QuizBanner extends StatelessWidget {
  const QuizBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Container(
          width: double.infinity,
          height: 230,
          decoration: BoxDecoration(
            color: KBrandColor,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Not sure which tech career aligns with your interests?",
                style: GoogleFonts.nunito(
                  color: KLightShadeColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Positioned(
          left: -80,
          top: -55,
          child: Lottie.asset(
            KQuestionGreen,
            width: 350,
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 20,
          bottom: 35,
          child: Material(
            elevation:
                3, // Adjust the elevation value for the desired shadow effect
            borderRadius: BorderRadius.circular(8),
            color: KLightShadeColor,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuizScreen()));
              },
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                child: Text(
                  "Find my fit",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.delius(
                    color: KDarkShadeColor,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
