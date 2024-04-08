import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_workout/presentation/UI/theme/theme.dart';
import 'package:my_workout/presentation/features/home/widgets/home_top.dart';

import '../widgets/home bot.dart';
import '../widgets/home_mid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundDark,
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        color: Colors.grey,
        activeColor: Colors.white,
        gap: 8,
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
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
              TopPanelHome(),
              CreateWMid(),
              CreateWBot(),
          ],
        ),
      ),
    );
  }
}