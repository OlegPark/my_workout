import 'package:flutter/material.dart';
import '../widgets/height_mid.dart';
import '../widgets/height_top.dart';

class HeightScreen extends StatelessWidget {
  const HeightScreen({super.key});

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
              image: AssetImage('assets/images/height.png'),
              fit: BoxFit.cover,
            )
          ),
          child: const Column(
            children: [
              TopPanelH(),
              MidPanelH(),
              // BotPanelH(),
            ],
          ),
        ),
      ),
    );
  }
}