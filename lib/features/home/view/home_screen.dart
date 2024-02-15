import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_workout/UI/theme/theme.dart';
import 'package:my_workout/features/home/widgets/home%20bot.dart';
import 'package:my_workout/features/home/widgets/home_top.dart';

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
        // onTabChange: (index) {
        //   print(index);
        // },
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Дмой',
          ),
          GButton(
            icon: Icons.favorite_border,
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
              // MidPanelH(),
              // BotPanelHome(),
          ],
        ),
      ),
    );
  }
}