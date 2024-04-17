import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateWBot extends StatelessWidget {
  const CreateWBot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 63),
      child: GestureDetector(
        onTap: () => context.go('/createW1'),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(10),
          ),
          height: 47,
          width: 255,
          alignment: Alignment.center,
          child: const Text(
            'НАЧАТЬ',
            style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }                                           
}