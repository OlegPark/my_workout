import 'package:flutter/material.dart';
import 'package:my_workout/features/createAcc/weight/widget/weight_bot.dart';
import '../widget/weight_mid.dart';
import '../widget/weight_top.dart';

class WeightScreen extends StatelessWidget {
  const WeightScreen({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/weight.png'),
              fit: BoxFit.cover,
            )
          ),
          child: const Column(
            children: [
              TopPanelW(),
              MidPanelWeigh(),
              BotPanelWeigh(),
            ],
          ),
        ),
      ),
    );
  }
}