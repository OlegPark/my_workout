import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MidPanelAuth extends StatelessWidget {
  const MidPanelAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoTextField(
          placeholder: 'Email',
          placeholderStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.grey[400],
          ),
        ),
        CupertinoTextField(
          placeholder: 'Пароль',
        ),
      ],
    );
  }
}