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

  //checkbox tap
  void onCheckBoxChanged(String workoutName, String exerciseName) {
    Provider.of<WorkoutData>(context, listen: false)
        .checkOffExercise(workoutName, exerciseName);
  }

  //text controller
  final exerciseNameController = TextEditingController();
  final weightController = TextEditingController();
  final repsController = TextEditingController();
  final setsController = TextEditingController();


  // sozdaet novoe uprajnenie
  void createNewExercise() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Добавить новое упражнение'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // nazvanie uprajneniya
            TextField(
              controller: exerciseNameController,
            ),

            // ves
            TextField(
              controller: weightController,
            ),

            // povtori
            TextField(
              controller: repsController,
            ),

            // podhod
            TextField(
              controller: setsController,
            ),
          ],
        ),
        actions: [
           //knopka sohranit
          MaterialButton(
            onPressed: save,
            child: Text('сохранить'),  
          ),

          //knopka otmena
            MaterialButton(
            onPressed: cancel,
            child: Text('отмена'),  
          ),
        ],
      ),
    );
  }

  //sohranit trenirovku
  void save() {
    String newExerciseName = exerciseNameController.text;
    String weight = weightController.text;
    String reps = repsController.text;
    String sets = setsController.text;

    Provider.of<WorkoutData>(context, listen: false).addExercise(
      widget.workoutName,
      newExerciseName,
      weight,
      reps,
      sets,
    );

    Navigator.pop(context);
    clear();
  }

  //otmena
  void cancel() {
    Navigator.pop(context);
    clear();
  }

  void clear() {
    exerciseNameController.clear();
    weightController.clear();
    repsController.clear();
    setsController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(title: Text(widget.workoutName)),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewExercise,
          child: Icon(Icons.add),
        ),
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
            onCheckBoxChanged: (val) => onCheckBoxChanged(
              widget.workoutName,
              value
                  .getRelevantWorkout(widget.workoutName)
                  .exercise[index]
                  .name,
            ),
          ),
        ),
      ),
    );
  }
}