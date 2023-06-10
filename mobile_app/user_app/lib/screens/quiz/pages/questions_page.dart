import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/constants/images.dart';
import 'package:user_app/data/quiz.dart';
import 'package:user_app/screens/quiz/pages/quiz_result.dart';
import 'package:user_app/screens/skillExploration/skill_exploration.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  final CardSwiperController controller = CardSwiperController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int currentStep = 0;

  Future<void> handleAnswer() async {
    if (currentStep < quizData.length - 1) {
      controller.swipe();
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const QuizResultPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KDarkShadeColor,
      body: SafeArea(
          child: Column(children: [
        const SizedBox(height: 20),
        Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SkillExplorationScreen()));
                },
                child: Image.asset(KClose))),
        const SizedBox(height: 30),
        StepProgressIndicator(
          totalSteps: quizData.length,
          currentStep: currentStep + 1,
          selectedColor: KBrandColor,
          unselectedColor: KLightShadeColor,
        ),
        // const SizedBox(height: 40),
        Flexible(
          child: CardSwiper(
            controller: controller,
            cardBuilder: (context, index) => QuizCard(
                onAnswer: handleAnswer,
                question: quizData[index]['question'],
                options: quizData[index]['options'],
                isActive: index == currentStep),
            cardsCount: quizData.length,
            numberOfCardsDisplayed: 3,
            isLoop: false,
            isDisabled: true,
            onSwipe: (previousIndex, currentIndex, direction) {
              setState(() {
                currentStep = currentIndex!;
              });
              return true;
            },
          ),
        ),
      ])),
    );
  }
}

class QuizCard extends StatelessWidget {
  final String question;
  final List<String> options;
  final bool isActive;
  final Future<void> Function() onAnswer;
  const QuizCard(
      {super.key,
      required this.question,
      required this.options,
      required this.isActive,
      required this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isActive ? 1 : 0.5,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: KLightShadeColor,
        ),
        // constraints: ,
        width: double.infinity,
        child: Column(children: [
          Text(
            question,
            style: GoogleFonts.comfortaa(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: KDarkShadeColor,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 40),
          ...options.map((option) => OptionTile(
                option: option,
                onAnswer: onAnswer,
              ))
        ]),
      ),
    );
  }
}

class OptionTile extends StatefulWidget {
  final String option;
  final Future<void> Function() onAnswer;

  const OptionTile({super.key, required this.option, required this.onAnswer});

  @override
  State<OptionTile> createState() => _OptionTileState();
}

class _OptionTileState extends State<OptionTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onAnswer();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: KMediumShadeColor),
          color: isSelected ? KMediumShadeColor : KLightShadeColor,
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(isSelected ? KTick : KCircle),
            const SizedBox(width: 16),
            Flexible(
              child: Text(widget.option,
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: isSelected ? KLightShadeColor : KMediumShadeColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
