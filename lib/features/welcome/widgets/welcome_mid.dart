import 'package:flutter/material.dart';

class WelcomeMid extends StatelessWidget {
  const WelcomeMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 480),
          child: const Text(
            'Стань лучшей',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const Text(
          'версией себя',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        )
      ],
    );
  }
}