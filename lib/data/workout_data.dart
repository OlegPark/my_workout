import 'package:flutter/material.dart';
import 'package:my_workout/data/hive_database.dart';
import 'package:my_workout/domain/datetime/date_time.dart';
import 'package:my_workout/domain/models/exercise.dart';

import '../domain/models/workout.dart';

class WorkoutData extends ChangeNotifier{

  final db = HiveDatabase();


  List<Workout> workoutList = [
    // тренировка по умолчанию стандартный пример
    // Workout(
    //   name: 'Вверх тела',
    //   exercise: [
    //     Exercise(
    //       name: "сгибание на бицепс",
    //       weight: "10",
    //       reps: "10",
    //       sets: "3",
    //     ),
    //   ],
    // ),
  ];

  void initalizeWorkoutList() {
    if (db.previousDataExists()) {
      workoutList = db.readFromDatabase();
    } 
    else {
      db.saveToDatabase(workoutList);
    }

    loadHeatMap();
  }
  
  // метод для получения списка тренировок
  List<Workout> getWorkoutList() {
    return workoutList;
  }

  // продолжительность тренировки
  int numberOfExercisesWorkout(String workoutName) {
    Workout relevantWorkout = getRelevantWorkout(workoutName);

    return relevantWorkout.exercise.length;
  }

  // добавить тренировку
  void addWorkout(String name) {
    // dobavili novuy trinirovku v obshiy spisok trenirovok
    workoutList.add(Workout(name: name, exercise: []));

    notifyListeners();
    db.saveToDatabase(workoutList);
  }

  // добавить упржнение
  void addExercise(String workoutName, String exerciseName, String weight, String reps, String sets) {

    Workout relevantWorkout = getRelevantWorkout(workoutName);
    
    relevantWorkout.exercise.add(
      Exercise(
        name: exerciseName,
        weight: weight,
        reps: reps,
        sets: sets
      ),
    );

    notifyListeners();
  }

  // отметить упражнение после его завершения
  void checkOffExercise(String workoutName, String exerciseName) {
    // kakuy trenirovku mi rassmatrivaem
    Exercise relevantExercise = getRelevantExercise(workoutName, exerciseName);
    relevantExercise.isCompleted = !relevantExercise.isCompleted;

    notifyListeners();
    db.saveToDatabase(workoutList);

    loadHeatMap();
  }


  Workout getRelevantWorkout(String workoutName) {
    // находим подходящую тренировку
    Workout relevantWorkout = workoutList.firstWhere((workout) => workout.name == workoutName);
    return relevantWorkout;
  }

  // poluchit sootvitstvuyshie yprajnenie
  Exercise getRelevantExercise(String workoutName, String exerciseName) {
    // найти тренировку
    Workout relevantWorkout = getRelevantWorkout(workoutName);
    // найти упражнение
    Exercise relevantExercise = relevantWorkout.exercise.firstWhere((exercise) => exercise.name == exerciseName);
    return relevantExercise;
  }

  String getStartDate() {
    return db.getStartDate();
  }

  Map<DateTime, int> heatMapDataSet = {};

  void loadHeatMap(){
    DateTime startDate = createDateTimeObject(getStartDate());

    int daysBetween = DateTime.now().difference(startDate).inDays;

    for (int i = 0; i < daysBetween+1; i++) {
      String yyyymmdd = convertDateTimeYYYYMMDD(startDate.add(Duration(days: i)));
      int completionStatus = db.getCompletionStatus(yyyymmdd);

      int year = startDate.add(Duration(days: i)).year;
      int month = startDate.add(Duration(days: i)).month;
      int day = startDate.add(Duration(days: i)).day;

      final percentForEachDay = <DateTime, int> {
        DateTime(year, month, day): completionStatus
      };
      
      heatMapDataSet.addEntries(percentForEachDay.entries);
    }
  }
}