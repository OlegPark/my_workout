import 'package:flutter/material.dart';

class TopPanelG extends StatelessWidget {
  const TopPanelG({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 17),
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
              'assets/images/20proc.png'
            ),
          ),
        ],
      ),
    );
  }
}