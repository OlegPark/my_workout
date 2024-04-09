import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_workout/presentation/UI/theme/theme.dart';
import 'package:my_workout/presentation/features/createW/widgets/createW_top.dart';

import '../widgets/createW_bot.dart';
import '../widgets/createW_mid.dart';

class CreateWScreen extends StatefulWidget {
  const CreateWScreen({super.key});

  @override
  State<CreateWScreen> createState() => _CreateWScreenState();
}

class _CreateWScreenState extends State<CreateWScreen> {
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
              CReateWTop(),
              CreateWMid(),
              CreateWBot(),
          ],
        ),
      ),
    );
  }
}