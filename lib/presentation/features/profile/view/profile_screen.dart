import 'package:flutter/material.dart';
import 'package:my_workout/presentation/features/profile/widgets/heat_map.dart';
import '../../../UI/theme/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundDark,
      body: SafeArea(
        child: Column(
          children: [
            Center(child: Text('Profile screen', style: wText)),
            MyHeatMap(),
          ],
        ),
      ),
    );
  }
}