import 'package:flutter/material.dart';
import 'package:my_workout/data/workout_data.dart';
import 'package:provider/provider.dart';

class CreateW1Screen extends StatefulWidget {
  const CreateW1Screen({super.key});

  @override
  State<CreateW1Screen> createState() => _CreateW1ScreenState();
}

class _CreateW1ScreenState extends State<CreateW1Screen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
        title: Text('Workout tracker'),
        ),
        body: ListView.builder(
          itemCount: value.getWorkoutList().length,
          itemBuilder: (context, index) => ListTile(
            title: Text('Lol'),
          ),
        ),
      ),
    );
  }
}