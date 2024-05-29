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
          title: Text(
            'Мой прогресс',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        backgroundColor: backgroundDark,
        body: ListView(
          children: [
            MyHeatMap(datasets: value.heatMapDataSet, startDateYYYYMMDD: value.getStartDate()),
            Center(child: Text('Profile screeen', style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}