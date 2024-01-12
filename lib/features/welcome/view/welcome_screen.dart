import 'package:flutter/material.dart';
import '../widgets/welcome_bot.dart';
import '../widgets/welcome_top.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
              image: AssetImage('assets/images/welcome.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            children: [
              WelcomeTop(),
              WelcomeBot(),
            ],
          ),
         ),
       ),
    );
  }
}
