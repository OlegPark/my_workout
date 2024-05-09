import 'package:flutter/material.dart';
import 'package:my_workout/data/workout_data.dart';
import 'package:my_workout/presentation/features/createW/child_screen/createW2/widgets/exercise_tile.dart';
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
          itemBuilder: (context, index) => ExerciseTile(
            exerciseName: value
                .getRelevantWorkout(widget.workoutName)
                .exercise[index]
                .name,
            weight: value
                .getRelevantWorkout(widget.workoutName)
                .exercise[index]
                .weight,
            reps: value
                .getRelevantWorkout(widget.workoutName)
                .exercise[index]
                .reps,
            sets: value
                .getRelevantWorkout(widget.workoutName)
                .exercise[index]
                .sets,
            isCompleted: value
                .getRelevantWorkout(widget.workoutName)
                .exercise[index]
                .isCompleted,
          ),
        ),
      ),
    );
  }
}