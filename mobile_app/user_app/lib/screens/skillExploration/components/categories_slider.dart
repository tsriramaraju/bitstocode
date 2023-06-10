import 'dart:ffi';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/constants/illustrations.dart';
import 'package:user_app/constants/images.dart';
import 'package:user_app/data/categories.dart';
import 'package:user_app/screens/skillExploration/pages/category_page.dart';

class CategoriesSlider extends StatefulWidget {
  const CategoriesSlider({super.key});

  @override
  State<CategoriesSlider> createState() => _CategoriesSliderState();
}

class _CategoriesSliderState extends State<CategoriesSlider> {
  int _currentIndex = 0;

  void _onIndexChanged(int index) {
    print(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Swiper(
          itemCount: categories.length,
          onIndexChanged: _onIndexChanged,
          // indicatorLayout: PageIndicatorLayout.COLOR,
          scale: .79,
          viewportFraction: .78,
          itemBuilder: (BuildContext context, int index) {
            return CategorySlide(
              description: categories[index].description,
              title: categories[index].name,
              illustration: categories[index].illustration,
              fullDescription: categories[index].bigDescription,
              isActive: _currentIndex == index ? true : false,
            );
          }),
    );
  }
}

class CategorySlide extends StatelessWidget {
  final String illustration;
  final String title;
  final String description;
  final String fullDescription;
  final bool isActive;
  const CategorySlide(
      {super.key,
      required this.title,
      required this.description,
      required this.illustration,
      required this.isActive,
      required this.fullDescription});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CategoryPage(title: title, description: fullDescription)));
      },
      child: Container(
        width: 260,
        height: 316,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: isActive ? KDarkShadeColor : KBrandColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 165,
                    child: Text(title,
                        style: GoogleFonts.nunito(
                          fontSize: 24,
                          color: KLightShadeColor,
                        )),
                  ),
                  Image.asset(
                    KArrow,
                    width: 28,
                    height: 28,
                    fit: BoxFit.fill,
                  )
                ],
              ),
              SvgPicture.asset(
                illustration,
                height: 150,
              ),
              Text(
                description,
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: KLightShadeColor,
                ),
                textAlign: TextAlign.center,
              ),
            ]),
      ),
    );
  }
}
