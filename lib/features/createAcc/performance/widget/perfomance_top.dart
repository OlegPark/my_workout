import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopPanelPerf extends StatelessWidget {
  const TopPanelPerf({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => context.go('/dweight'),
            child: Image.asset('assets/images/back.png'),
          ),
          Image.asset(
            'assets/images/100proc.png'
          ),
          const SizedBox(width: 23),
        ],
      ),
    );
  }
}