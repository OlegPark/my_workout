import 'package:flutter/material.dart';

class MidPanelSign extends StatelessWidget {
  const MidPanelSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 80),
          child: const Text(
            'Зарегистрироваться',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const SizedBox(height: 46),
        TextField(),
        const SizedBox(height: 25),
        TextField(),
        const SizedBox(height: 25),
        TextField(),
        const SizedBox(height: 25),
        TextField(),
      ],
    );
  }
}