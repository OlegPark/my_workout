import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyWeight extends StatelessWidget {
  int weightU;
  MyWeight({required this.weightU});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        weightU.toString(),
        style: const TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}