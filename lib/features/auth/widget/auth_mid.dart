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
        ),
        CupertinoTextField(
          placeholder: 'Пароль',
        ),
      ],
    );
  }
}