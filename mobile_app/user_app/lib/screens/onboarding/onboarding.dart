import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/constants/illustrations.dart';
import 'package:user_app/screens/onboarding/pages/boarding_slide_page.dart';
import 'package:user_app/screens/onboarding/pages/final_boarding_slide_page.dart';
import 'package:user_app/screens/onboarding/pages/welcome_page.dart';

Container buildDot(int index, int position) {
  return Container(
    height: 4,
    width: index == position ? 21 : 10,
    margin: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: KLightShadeColor.withOpacity(index == position ? 1 : 0.5),
    ),
  );
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = [
      {
        'title': 'Discover Your Tech',
        'position': 0,
        'description':
            'Dig into diverse software careers and find your perfect fit.',
        'illustration': KExplore,
      },
      {
        'title': 'Your Journey, Your Pace',
        'position': 1,
        'description':
            'Tailor-made learning paths just for you. Ready, set, learn!',
        'illustration': KRoadmap,
      },
      {
        'title': 'You\'re Not Alone',
        'position': 2,
        'description':
            'Join our tribe. Share, discuss, showcase, collaborate, and more.',
        'illustration': KCollab,
      },
      {
        'title': 'Guidance on Tap',
        'position': 3,
        'description': 'Get insights from the pros. Your mentor awaits.',
        'illustration': KGuidance,
      },
    ];

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        .copyWith(statusBarColor: Colors.white10.withOpacity(0)));
    final PageController controller = PageController();

    void nextPage() {
      // if controller hits last page go back to first page
      // if (controller.page == list.length) {
      //   controller.jumpToPage(0);
      //   return;
      // }

      controller.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    }

    return Scaffold(
      body: Center(
          child: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          children: [
            WelcomePage(
              onClick: nextPage,
            ),
            ...list.map(
              (e) => BoardingSlide(
                onClick: nextPage,
                title: e['title'],
                description: e['description'],
                position: e['position'],
                illustration: e['illustration'],
              ),
            ),
            const LastBoardingSlide(),
          ],
        ),
      )),
    );
  }
}
