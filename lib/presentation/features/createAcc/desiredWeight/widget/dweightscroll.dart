import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyDWeight extends StatelessWidget {
  int dweightU;
  MyDWeight({required this.dweightU});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        dweightU.toString(),
        style: const TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}