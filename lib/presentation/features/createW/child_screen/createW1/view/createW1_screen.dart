import 'package:flutter/material.dart';
import 'package:my_workout/data/workout_data.dart';
import 'package:provider/provider.dart';

import '../../createW2/view/createW2_screen.dart';

class CreateW1Screen extends StatefulWidget {
  const CreateW1Screen({super.key});

  @override
  State<CreateW1Screen> createState() => _CreateW1ScreenState();
}

class _CreateW1ScreenState extends State<CreateW1Screen> {

  //text controller
  final newWorkoutController = TextEditingController();

  //создание новой тренировки
  void createNewWorkout() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Create new workout'),
        content: TextField(
          controller: newWorkoutController,
        ),
        actions: [

          //knopka sohranit
          MaterialButton(
            onPressed: save,
            child: Text('save'),  
          ),

          //knopka otmena
            MaterialButton(
            onPressed: cancel,
            child: Text('cancel'),  
          ),
        ],
      ),
    );
  }

  //переход на страницу тренировки
  void goToWorkoutpage(String workoutName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CreateW2Screen(
          workoutName: workoutName,
        ),
      ),
    );
  }

  //sohranit trenirovku
  void save() {
    String newWorkoutName = newWorkoutController.text;
    Provider.of<WorkoutData>(context, listen: false).addWorkout(newWorkoutName);

    Navigator.pop(context);
    clear();
  }

  //otmena
  void cancel() {
    Navigator.pop(context);
    clear();
  }

  void clear() {
    newWorkoutController.clear();
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
        title: const Text('Workout tracker'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewWorkout,
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: value.getWorkoutList().length,
          itemBuilder: (context, index) => ListTile(
            title: Text(value.getWorkoutList()[index].name),
            trailing: IconButton(
              onPressed: () => goToWorkoutpage(value.getWorkoutList()[index].name),
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
      ),
    );
  }
}