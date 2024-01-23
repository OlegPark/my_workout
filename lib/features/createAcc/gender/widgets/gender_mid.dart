import 'package:flutter/material.dart';

class MidPanelG extends StatelessWidget {
  const MidPanelG({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 212),
          child: const Text(
            'Ваш пол',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 34),
              child: Image.asset('assets/images/man.png'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 34),
              child: Image.asset('assets/images/woman.png'),
            ),
          ],
        ),
      ],
    );
  }
}