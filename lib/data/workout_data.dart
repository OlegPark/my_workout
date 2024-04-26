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
  // добавить упржнение
  // отметить упражнение после его завершения
  // продолжительность тренировки
}