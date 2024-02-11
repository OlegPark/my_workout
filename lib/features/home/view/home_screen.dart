import 'package:flutter/material.dart';
import 'package:my_workout/UI/theme/theme.dart';
import 'package:my_workout/features/home/widgets/home%20bot.dart';
import 'package:my_workout/features/home/widgets/home_top.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundDark,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
              TopPanelHome(),
              // MidPanelH(),
              BotPanelHome(),
          ],
        ),
      ),
    );
  }
}