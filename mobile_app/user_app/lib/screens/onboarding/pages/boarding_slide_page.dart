import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/components/button/primary_button.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/screens/onboarding/onboarding.dart';

class BoardingSlide extends StatelessWidget {
  final VoidCallback onClick;
  final String title;
  final String description;
  final int position;
  final String illustration;

  const BoardingSlide(
      {super.key,
      required this.onClick,
      required this.title,
      required this.description,
      required this.position,
      required this.illustration});

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
          height: 400,
          child: SvgPicture.asset(
            illustration,
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
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.comfortaa(
                  fontSize: 30,
                  color: KLightShadeColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                description,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: KLightShadeColor,
                ),
              ),
              const SizedBox(height: 60),
              PrimaryButton(
                text: 'Next',
                onClick: onClick,
              ),
              const SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => buildDot(index, position),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
