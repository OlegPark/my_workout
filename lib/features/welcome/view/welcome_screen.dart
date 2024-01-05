import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(right: 15, left: 15, top: 15),
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}