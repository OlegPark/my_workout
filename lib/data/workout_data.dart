import 'package:my_workout/domain/models/exercise.dart';

import '../domain/models/workout.dart';

class WorkoutData {
  List<Workout> workoutList = [
    // тренировка по умолчанию стандартный пример
    Workout(
      name: 'Верх тела',
      exercise: [
        Exercise(
          name: "бицепс",
          weight: "10",
          reps: "10",
          sets: "3",
        ),
      ],
    ),
  ];
  
  // метод для получения списка тренировок
  List<Workout> getWorkoutList() {
    return workoutList;
  }

  // добавить тренировку
  void addWorkout(String name) {
    // dobavili novuy trinirovku v obshiy spisok trenirovok
    workoutList.add(Workout(name: name, exercise: []));
  }

  // добавить упржнение
  void addExercise(String workoutName, String exerciseName, String weight, String reps, String sets) {
    // find the relevant workout
    Workout relevantWorkout = workoutList.firstWhere((workout) => workout.name == workoutName);
    relevantWorkout.exercise.add(
      Exercise(
        name: exerciseName,
        weight: weight,
        reps: reps,
        sets: sets
      ),
    );
  }

  // отметить упражнение после его завершения
  // продолжительность тренировки
}