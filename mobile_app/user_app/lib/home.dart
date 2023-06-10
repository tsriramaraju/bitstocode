import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/screens/library/library_screen.dart';
import 'package:user_app/screens/roadmaps/roadmaps_screen.dart';
import 'package:user_app/screens/skillExploration/skill_exploration.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List pages = [
    const SkillExplorationScreen(),
    const RoadmapScreen(),
    const LibraryScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: MoltenBottomNavigationBar(
        barHeight: 50,
        barColor: KDarkShadeColor,
        domeCircleColor: KBrandColor,
        tabs: [
          MoltenTab(
            icon: const Icon(Icons.search),

            // selectedColor: Colors.yellow,
          ),
          MoltenTab(
            icon: const Icon(Icons.home),
            title: const Text('home'),
            // selectedColor: Colors.yellow,
          ),
          MoltenTab(
            icon: const Icon(Icons.person),
            // selectedColor: Colors.yellow,
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (clickedIndex) {
          setState(() {
            _selectedIndex = clickedIndex;
          });
        },
      ),
    );
  }
}
