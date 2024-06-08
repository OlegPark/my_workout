import 'package:flutter/material.dart';

class MyHeight extends StatelessWidget {
  int heightU;
  MyHeight({required this.heightU});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          heightU.toString(),
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}