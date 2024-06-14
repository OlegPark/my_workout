import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyHeight extends StatelessWidget {
  int heightU;
  MyHeight({required this.heightU});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        heightU.toString(),
        style: const TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}