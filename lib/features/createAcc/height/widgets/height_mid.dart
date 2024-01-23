import 'package:flutter/material.dart';

class MidPanelH extends StatelessWidget {
  const MidPanelH({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 212),
          child: const Text(
            'Рост',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const SizedBox(height: 46),
        const Text(
          '182',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w900
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          '183',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w900
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          '184',
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