import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopPanelW extends StatelessWidget {
  const TopPanelW({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => context.go("/height"),
            child: Image.asset('assets/images/back.png'),
          ),
          Container(
            margin: const EdgeInsets.only(left: 65),
            child: Image.asset(
              'assets/images/60proc.png'
            ),
          ),
        ],
      ),
    );
  }
}