import 'package:flutter/material.dart';

class CreateW2Screen extends StatefulWidget {
  final String workoutName;
  const CreateW2Screen({super.key, required this.workoutName});

  @override
  State<CreateW2Screen> createState() => _CreateW2ScreenState();
}

class _CreateW2ScreenState extends State<CreateW2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.workoutName),),
    );
  }
}