import 'package:flutter/material.dart';

class MidPanelWeigh extends StatelessWidget {
  const MidPanelWeigh({super.key});

   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 212),
          child: const Text(
            'Вес',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const SizedBox(height: 46),
        const Text(
          '64',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w900
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          '65',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w900
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          '66',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w900
          ),
        ),
      ],
    );
  }
}