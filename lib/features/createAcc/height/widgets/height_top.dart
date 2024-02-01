import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopPanelH extends StatelessWidget {
  const TopPanelH({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => context.go('/gender'),
            child: Image.asset('assets/images/back.png'),
          ),
          Container(
            margin: const EdgeInsets.only(left: 80),
            child: Image.asset(
              'assets/images/40proc.png'
            ),
          ),
        ],
      ),
    );
  }
}