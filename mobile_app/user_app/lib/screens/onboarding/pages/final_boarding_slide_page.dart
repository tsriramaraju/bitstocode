import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/components/button/primary_button.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/constants/illustrations.dart';
import 'package:user_app/screens/onboarding/pages/login_page.dart';
import 'package:user_app/screens/onboarding/pages/registration_page.dart';

class LastBoardingSlide extends StatelessWidget {
  const LastBoardingSlide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 14),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          height: 300,
          child: SvgPicture.asset(
            KStart,
          ),
        ),
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 46),
          margin: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: KDarkShadeColor,
          ),
          child: Column(
            children: [
              Text(
                "And... That's Just the Start!",
                textAlign: TextAlign.center,
                style: GoogleFonts.comfortaa(
                  fontSize: 30,
                  color: KLightShadeColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                "Discover a wealth of other features, all geared to fuel your software journey. Ready to dive in?",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: KLightShadeColor,
                ),
              ),
              const SizedBox(height: 60),
              PrimaryButton(
                text: 'Sign up',
                onClick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationPage()));
                },
              ),
              const SizedBox(height: 26),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: Text(
                  "Already an existing user? login here",
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: KLightShadeColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
