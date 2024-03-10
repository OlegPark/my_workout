import 'package:flutter/material.dart';
import 'package:my_workout/presentation/features/createAcc/performance/widget/perfomance_bot.dart';
import '../widget/perfomance_mid.dart';
import '../widget/perfomance_top.dart';

class PerfomanceScreen extends StatelessWidget {
  const PerfomanceScreen({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/perfomance.png'),
              fit: BoxFit.cover,
            )
          ),
          child: const Column(
            children: [
              TopPanelPerf(),
              MidPanelPerf(),
              BotPanelPerf(),
            ],
          ),
        ),
      ),
    );
  }
}