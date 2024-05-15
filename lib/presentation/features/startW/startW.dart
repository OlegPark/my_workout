import 'package:flutter/material.dart';
import '../../UI/theme/theme.dart';

class StartWorkoutScreen extends StatelessWidget {
  const StartWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundDark,
      body: Center(child: Text('Start workout screen', style: TextStyle(color: Colors.white),))
    );
  }
}
