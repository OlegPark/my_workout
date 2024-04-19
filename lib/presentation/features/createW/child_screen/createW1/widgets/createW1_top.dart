import 'package:flutter/material.dart';

class CrWTop extends StatelessWidget {
  const CrWTop({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Text('New Workout'),
    );
  }
}