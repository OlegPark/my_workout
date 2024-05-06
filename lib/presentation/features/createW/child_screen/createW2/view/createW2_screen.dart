import 'package:flutter/material.dart';
import 'package:my_workout/data/workout_data.dart';
import 'package:provider/provider.dart';

class CreateW2Screen extends StatefulWidget {
  final String workoutName;
  const CreateW2Screen({super.key, required this.workoutName});

  @override
  State<CreateW2Screen> createState() => _CreateW2ScreenState();
}

class _CreateW2ScreenState extends State<CreateW2Screen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(title: Text(widget.workoutName)),
        body: ListView.builder(itemBuilder: (context, index) => ListTile(
          title: Text('title'),
        ),
        ),
      ),
    );
  }
}