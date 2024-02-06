import 'package:flutter/material.dart';
import '../widget/perfomance_top.dart';

class PerfomanceScreen extends StatelessWidget {
  const PerfomanceScreen({super.key});

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
              image: AssetImage('assets/images/perfomance.png'),
              fit: BoxFit.cover,
            )
          ),
          child: const Column(
            children: [
              TopPanelPerf(),
              // MidPanelWeigh(),
              // BotPanelWeigh(),
            ],
          ),
        ),
      ),
    );
  }
}