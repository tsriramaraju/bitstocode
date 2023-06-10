import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/screens/library/library_screen.dart';
import 'package:user_app/screens/onboarding/onboarding.dart';
import 'package:user_app/screens/roadmaps/roadmaps_screen.dart';
import 'package:user_app/screens/skillExploration/skill_exploration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List pages = [
    const SkillExplorationScreen(),
    const RoadmapScreen(),
    const LibraryScreen()
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bits to Code',
        home: Scaffold(
            body: pages[_selectedIndex],
            bottomNavigationBar: MoltenBottomNavigationBar(
              barColor: KDarkShadeColor,
              domeCircleColor: KBrandColor,
              tabs: [
                MoltenTab(
                  icon: Icon(Icons.search),

                  // selectedColor: Colors.yellow,
                ),
                MoltenTab(
                  icon: Icon(Icons.home),
                  title: Text('home'),
                  // selectedColor: Colors.yellow,
                ),
                MoltenTab(
                  icon: Icon(Icons.person),
                  // selectedColor: Colors.yellow,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (clickedIndex) {
                setState(() {
                  _selectedIndex = clickedIndex;
                });
              },
            )));
  }
}
