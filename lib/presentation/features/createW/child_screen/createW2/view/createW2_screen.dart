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
        body: ListView.builder(
          itemCount: value.numberOfExercisesWorkout(widget.workoutName),
          itemBuilder: (context, index) => Container(
            color: Colors.grey,
            child: ListTile(
              title: Text(value.getRelevantWorkout(widget.workoutName).exercise[index].name),
              subtitle: Row(
                children: [
                  //ves
                  Chip(label: Text("${value.getRelevantWorkout(widget.workoutName).exercise[index].weight} kg")),
            
                  //povtoreniya
                  Chip(label: Text("${value.getRelevantWorkout(widget.workoutName).exercise[index].reps} reps")),
            
                  //podhod
                  Chip(label: Text("${value.getRelevantWorkout(widget.workoutName).exercise[index].sets} sets")),
                ],
              ),
                    ),
          ),
        ),
      ),
    );
  }
}