import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopPanelW extends StatelessWidget {
  const TopPanelW({super.key});

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => context.go("/height"),
            child: Image.asset('assets/images/back.png'),
          ),
          Image.asset(
            'assets/images/60proc.png'
          ),
          const SizedBox(width: 23),
        ],
      ),
    );
  }
}