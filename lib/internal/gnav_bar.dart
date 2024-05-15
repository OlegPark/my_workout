import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_workout/presentation/features/createW/view/view.dart';
import 'package:my_workout/presentation/features/profile/profile.dart';
import 'package:my_workout/presentation/features/startW/startW.dart';

class GoogleNavBar extends StatefulWidget {
  const GoogleNavBar({super.key});

  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {

  int currentIndex = 0;
  void goToPage(index) {
    setState(() {
    currentIndex = index;
    });
  }

  List pages = [
    CreateWScreen(),
    StartWorkoutScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        color: Colors.grey,
        activeColor: Colors.white,
        gap: 8,
        onTabChange: (index) => goToPage(index),
        tabs: [
          GButton(
            icon: Icons.create,
            text: 'Персонализ',
          ),
          GButton(
            icon: Icons.fitness_center,
            text: 'Старт',
          ),
          GButton(
            icon: Icons.person,
            text: 'Профиль',
          ),
        ]
      ),
    );
  }
}