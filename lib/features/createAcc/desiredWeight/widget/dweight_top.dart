import 'package:flutter/material.dart';

class TopPanelDW extends StatelessWidget {
  const TopPanelDW({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              print('object');
            },
            child: Image.asset('assets/images/back.png'),
          ),
          Container(
            margin: const EdgeInsets.only(left: 80),
            child: Image.asset(
              'assets/images/80proc.png'
            ),
          ),
        ],
      ),
    );
  }
}