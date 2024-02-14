import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BotPanelHome extends StatefulWidget {
  const BotPanelHome({super.key});

  @override
  State<BotPanelHome> createState() => _BotPanelHomeState();
}

class _BotPanelHomeState extends State<BotPanelHome> {
  @override
  Widget build(BuildContext context) {
    return const GNav(
        backgroundColor: Colors.black,
        color: Colors.grey,
        activeColor: Colors.white,
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Дмой',
          ),
          GButton(
            icon: Icons.favorite_border,
            text: 'Старт тренировки',
          ),
          GButton(
            icon: Icons.person,
            text: 'Профиль',
          ),
        ]
      );
  }
}