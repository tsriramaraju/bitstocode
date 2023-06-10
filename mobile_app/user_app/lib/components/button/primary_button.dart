import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/constants/images.dart';

enum ColorPallet {
  accent,
  brand,
}

class PrimaryButton extends StatelessWidget {
  final String text;
  final ColorPallet color;
  final VoidCallback onClick;
  final double width;
  final bool icon;
  final bool small;

  const PrimaryButton({
    super.key,
    required this.text,
    this.color = ColorPallet.brand,
    required this.onClick,
    this.width = 200,
    this.icon = false,
    this.small = false,
  });

  Color _getColor(BuildContext context) {
    switch (color) {
      case ColorPallet.accent:
        return KAccentColor;
      case ColorPallet.brand:
        return KBrandColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3, // Adjust the elevation value for the desired shadow effect
      borderRadius: BorderRadius.circular(8),
      color: _getColor(context),
      child: InkWell(
        onTap: onClick,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          constraints: BoxConstraints(minWidth: width),
          padding: small
              ? const EdgeInsets.all(14)
              : const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
          child: icon
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.delius(
                        color: KLightShadeColor,
                        fontSize: small ? 18 : 24,
                      ),
                    ),
                    SizedBox(width: small ? 10 : 20),
                    Image.asset(KArrow),
                  ],
                )
              : Text(
                  text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.delius(
                    color: KLightShadeColor,
                    fontSize: small ? 18 : 24,
                  ),
                ),
        ),
      ),
    );
  }
}
