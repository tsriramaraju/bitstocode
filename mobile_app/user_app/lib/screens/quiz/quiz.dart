import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:user_app/components/button/primary_button.dart';
import 'package:user_app/constants/animations.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/screens/quiz/pages/questions_page.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.white10.withOpacity(0)));

    return Scaffold(
        backgroundColor: KDarkShadeColor,
        body: SafeArea(
            child: Column(
          children: [
            Lottie.asset(
              KQuiz,
              width: double.infinity,
              height: 400,
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: KLightShadeColor,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 34),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Text(
                  "Uncover Your Ideal Tech Role",
                  style: GoogleFonts.comfortaa(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: KBrandColor,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  "Get personalized role recommendations in the tech world by answering a few simple questions.",
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: KMediumShadeColor,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 40),
                PrimaryButton(
                  text: "Begin Quiz",
                  onClick: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuestionsPage()));
                  },
                  color: ColorPallet.accent,
                  width: 300,
                ),
                const SizedBox(height: 10),
              ]),
            )
          ],
        )));
  }
}
