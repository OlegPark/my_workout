import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../UI/theme/theme.dart';

class BotPanelAuth extends StatelessWidget {
  const BotPanelAuth({super.key});

   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
           padding: const EdgeInsets.only(top: 40),
           child: GestureDetector(
            onTap: () => context.go('/height'),
            child: Container(
              decoration: BoxDecoration(
                color: bottomeBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 47,
              width: 255,
              alignment: Alignment.center,
              child: const Text(
                'Войти',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: GestureDetector(
            child: const Text(
              'Забыли пароль?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}