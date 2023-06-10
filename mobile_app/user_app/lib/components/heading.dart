import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class Heading extends StatelessWidget {
  final String heading1;
  final String heading2;
  const Heading({
    super.key,
    required this.heading1,
    required this.heading2,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: heading1,
            style: GoogleFonts.delius(
              color: KBrandColor,
              fontSize: 28.0,
            ),
          ),
          TextSpan(
            text: '\n$heading2',
            style: GoogleFonts.comfortaa(
              color: KAccentColor,
              height: 1.5,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
