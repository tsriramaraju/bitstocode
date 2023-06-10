import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:user_app/components/button/primary_button.dart';
import 'package:user_app/constants/animations.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/constants/images.dart';

class WelcomePage extends StatelessWidget {
  final onClick;

  const WelcomePage({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset(KWelcome),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Column(
            children: [
              Image.asset(
                KIcon,
                width: 250,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 26),
              Image.asset(
                KLogo,
                width: 260,
                height: 60,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(32),
          margin: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: KDarkShadeColor,
          ),
          child: Column(children: [
            Text(
              "Shaping Future Tech Leaders, One Bit at a Time!",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontSize: 18,
                color: KLightShadeColor,
              ),
            ),
            const SizedBox(height: 34),
            PrimaryButton(
              text: 'Begin My Journey',
              onClick: onClick,
            ),
          ]),
        ),
      ],
    );
  }
}
