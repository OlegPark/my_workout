import 'package:flutter/material.dart';
import '../../../UI/theme/theme.dart';

class WelcomeBot extends StatelessWidget {
  const WelcomeBot({super.key});

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
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: workoutBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 47,
            width: 245,
            alignment: Alignment.center,
            child: const Text(
              'Создать аккаунт',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        GestureDetector(
          child: const Text(
            'Уже зарегистрированы? Войти',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}