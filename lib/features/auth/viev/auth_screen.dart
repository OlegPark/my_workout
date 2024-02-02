import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

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
              image: AssetImage('assets/images/auth.png'),
              fit: BoxFit.cover,
            )
          ),
          child: const Column(
            children: [
              // TopPanelG(),
              // MidPanelG(),
              // BotPanelG(),
            ],
          ),
        ),
      ),
    );
  }
}