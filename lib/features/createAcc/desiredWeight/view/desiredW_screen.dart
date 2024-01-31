import 'package:flutter/material.dart';
import '../widget/dweight_mid.dart';
import '../widget/dweight_top.dart';

class DesiredWScreen extends StatelessWidget {
  const DesiredWScreen({super.key});

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
              image: AssetImage('assets/images/desiredWeight.png'),
              fit: BoxFit.cover,
            )
          ),
          child: const Column(
            children: [
              TopPanelDW(),
              MidPanelDW(),
              // BotPanelWeigh(),
            ],
          ),
        ),
      ),
    );
  }
}