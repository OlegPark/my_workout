import 'package:flutter/material.dart';
import 'package:my_workout/data/workout_data.dart';
import 'package:my_workout/presentation/features/profile/widgets/heat_map.dart';
import 'package:provider/provider.dart';
import '../../../UI/theme/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundDark,
          title: const Text(
            'Мой прогресс',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: backgroundDark,
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.circle, color: Colors.grey, size: 90,),
                  SizedBox(width: 10,),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text('Олег Пак', style: TextStyle(color: Colors.white, fontSize: 25),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Center(child: Text('График тренировок', style: TextStyle(color: Colors.white, fontSize: 18),)),
            MyHeatMap(datasets: value.heatMapDataSet, startDateYYYYMMDD: value.getStartDate()),
            const SizedBox(height: 20,),
            const Center(child: Text('Показатели', style: TextStyle(color: Colors.white, fontSize: 18),)),
            const SizedBox(height: 20,),
            Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/bodymap.jpg'))
              ),
            )
          ],
        ),
      ),
    );
  }
}