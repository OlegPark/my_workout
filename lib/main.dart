import 'package:flutter/material.dart';
import 'package:my_workout/features/createAcc/height/height.dart';
import 'package:my_workout/features/createAcc/weight/view/view.dart';
import 'package:my_workout/features/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeightScreen(),
    );
  }
}
