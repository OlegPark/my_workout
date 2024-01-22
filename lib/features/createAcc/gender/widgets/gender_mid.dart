import 'package:flutter/material.dart';

class MidPanelG extends StatelessWidget {
  const MidPanelG({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Image.asset('assets/images/man.png'),
        ),
        Container(
          child: Image.asset('assets/images/woman.png'),
        ),
      ],
    );
  }
}