import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_app/screens/skillExploration/components/categories_slider.dart';
import 'package:user_app/screens/skillExploration/components/quiz_banner.dart';

import '../../components/heading.dart';

class SkillExplorationScreen extends StatelessWidget {
  const SkillExplorationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        .copyWith(statusBarColor: Colors.white10.withOpacity(0)));

    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heading(heading1: "Explore", heading2: "Tech Careers"),
            SizedBox(height: 20.0),
            QuizBanner(),
            SizedBox(height: 20.0),
            CategoriesSlider(),
          ],
        ),
      ),
    );
  }
}
