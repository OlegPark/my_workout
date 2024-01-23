import 'package:flutter/material.dart';
import '../../../../UI/theme/theme.dart';

class BotPanelH extends StatelessWidget {
  const BotPanelH({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
           padding: const EdgeInsets.only(top: 220),
           child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: bottomeBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 47,
              width: 255,
              alignment: Alignment.center,
              child: const Text(
                'Далее',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}