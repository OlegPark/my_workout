import 'package:flutter/material.dart';
import '../widgets/gender_top.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

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
              image: AssetImage('assets/images/gender.png'),
              fit: BoxFit.cover,
            )
          ),
          child: const Column(
            children: [
              TopPanelG(),
              Text('Mid'),
              Text('Bot'),
            ],
          ),
        ),
      ),
    );
  }
}

