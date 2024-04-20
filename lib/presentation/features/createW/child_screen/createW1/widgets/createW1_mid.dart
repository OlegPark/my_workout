import 'package:flutter/material.dart';

class CrWMid extends StatelessWidget {
  const CrWMid({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              height: 30,
              width: 200,
              child: const Center(
                child: Text(
                  '+ Добавить упражнение',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}