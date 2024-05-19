import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_workout/domain/datetime/date_time.dart';
import 'package:my_workout/domain/models/exercise.dart';

import '../domain/models/workout.dart';

class HiveDatabase {

  final _myBox = Hive.box('workout_database');

  bool previousDataExists() {
    if (_myBox.isEmpty) {
      print("previous data does not exist");
      _myBox.put("START_DATE", todaysDateYYYYMMDD());
      return false;
    } else {
      print("previous data does exists");
      return true;
    }
  }
  
  String getStartDate() {
    return _myBox.get("START_DATE");
  }

  void saveToDatabase(List<Workout> workoutList) {
    
  }
}

List <String> convertOjectToWorkoutList(List<Workout> workouts) {
    List <String> workoutList = [
      
    ];

    for (int i = 0; i < workouts.length; i++) {
      workoutList.add(
        workouts[i].name
      );
    }
    return workoutList;
  }

List<List<List<String>>> convertOjectToExerciseList(List<Workout> workouts) {
  List<List<List<String>>> exerciseList = [
      
  ];

  for (int i = 0; i < workouts.length; i++) {
    List<Exercise> exercisesInWorkout = workouts[i].exercise;
    List<List<String>> individualWorkout = [

    ];

    for (int j = 0; j < exercisesInWorkout.length; j++) {
      List<String> individualExercise = [

      ];
      individualExercise.addAll(
        [
          exercisesInWorkout[j].name,
          exercisesInWorkout[j].weight,
          exercisesInWorkout[j].reps,
          exercisesInWorkout[j].sets,
          exercisesInWorkout[j].isCompleted.toString(),
        ],
      );
      individualWorkout.add(individualExercise);
    }
    exerciseList.add(individualWorkout);
  }

  return exerciseList;
}
