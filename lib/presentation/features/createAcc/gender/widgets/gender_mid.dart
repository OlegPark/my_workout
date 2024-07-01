import 'package:flutter/material.dart';

class MidPanelG extends StatefulWidget {
  const MidPanelG({super.key});

  @override
  State<MidPanelG> createState() => _MidPanelGState();
}

class _MidPanelGState extends State<MidPanelG> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 180),
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
              height: 130,
              width: 130,
              color: Colors.white,
              // child: Image.asset('assets/images/man.png'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 34),
              width: 130,
              height: 130,
              color: Colors.white,
              // child: Image.asset('assets/images/woman.png'),
            ),
          ],
        ),
      ],
    );
  }
}