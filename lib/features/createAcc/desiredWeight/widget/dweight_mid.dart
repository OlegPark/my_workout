import 'package:flutter/material.dart';

class MidPanelDW extends StatelessWidget {
  const MidPanelDW({super.key});

   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 200),
          child: const Text(
            'Желаемый',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const Text(
          'вес',
          style: TextStyle(
            color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 46),
        const Text(
          '74',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 17,
            fontWeight: FontWeight.w900
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          '75',
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.w900
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          '76',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 17,
            fontWeight: FontWeight.w900
          ),
        ),
      ],
    );
  }
}