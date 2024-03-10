import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MidPanelAuth extends StatelessWidget {
  const MidPanelAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          const SizedBox(height: 37,),
          CupertinoTextField(
            padding: const EdgeInsets.all(18),
            placeholder: 'Email',
            placeholderStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.grey[400],
            ),
            decoration: BoxDecoration(
              color: CupertinoColors.extraLightBackgroundGray,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 40,),
          CupertinoTextField(
            padding: const EdgeInsets.all(18),
            placeholder: 'Пароль',
            obscureText: true,
            placeholderStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.grey[400],
            ),
            decoration: BoxDecoration(
              color: CupertinoColors.extraLightBackgroundGray,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}