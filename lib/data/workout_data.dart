import 'package:my_workout/domain/models/exercise.dart';

import '../domain/models/workout.dart';

class WorkoutData {
  List<Workout> workoutList = [
    Workout(
      name: 'Upper body',
      exercise: [
        Exercise(
          name: "Biceps",
          weight: "10",
          reps: "10",
          sets: "3",
        ),
      ],
    ),
  ];
  
}