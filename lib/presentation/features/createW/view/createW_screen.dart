import 'package:flutter/material.dart';
import 'package:my_workout/presentation/UI/theme/theme.dart';
import 'package:my_workout/presentation/features/createW/widgets/createW_top.dart';
import '../widgets/createW_bot.dart';
import '../widgets/createW_mid.dart';

class CreateWScreen extends StatelessWidget {
  const CreateWScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundDark,
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