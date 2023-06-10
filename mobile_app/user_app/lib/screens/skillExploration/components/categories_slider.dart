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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Swiper(
          itemCount: 4,
          // indicatorLayout: PageIndicatorLayout.COLOR,
          scale: .79,
          viewportFraction: .78,
          itemBuilder: (BuildContext context, int index) {
            return CategorySlide(
              description: categoriesData[index]['description'],
              title: categoriesData[index]['title'],
              illustration: categoriesData[index]['illustration'],
              fullDescription: categoriesData[index]['fullDescription'],
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
  const CategorySlide(
      {super.key,
      required this.title,
      required this.description,
      required this.illustration,
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
          color: KDarkShadeColor,
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
                KDeveloper,
                width: 200,
                height: 150,
                // fit: BoxFit.fill,
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
