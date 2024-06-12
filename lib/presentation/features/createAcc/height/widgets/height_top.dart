import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopPanelH extends StatelessWidget {
  const TopPanelH({super.key});

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => context.go('/gender'),
            child: Image.asset('assets/images/back.png'),
          ),
          Image.asset(
            'assets/images/40proc.png'
          ),
          const SizedBox(width: 23),
        ],
      ),
    );
  }
}