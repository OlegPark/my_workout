import 'package:flutter/material.dart';
import 'package:my_workout/data/workout_data.dart';
import 'package:provider/provider.dart';

class CreateW1Screen extends StatefulWidget {
  const CreateW1Screen({super.key});

  @override
  State<CreateW1Screen> createState() => _CreateW1ScreenState();
}

class _CreateW1ScreenState extends State<CreateW1Screen> {

  //создание новой тренировки
  void createNewWorkout() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Create new workout'),
        content: TextField(),
        actions: [

          //knopka sohranit
          MaterialButton(
            onPressed: save,
            child: Text('save'),  
          ),

          //nopka otmena
            MaterialButton(
            onPressed: cancel,
            child: Text('cancel'),  
          ),
        ],
      ),
    );
  }

  //sohranit trenirovku
  void save() {}

  //otmena
  void cancel() {}


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
          ),
        ),
      ),
    );
  }
}