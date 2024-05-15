import 'package:flutter/material.dart';
import '../../../UI/theme/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundDark,
      body: Center(child: Text('Profile screen', style: TextStyle(color: Colors.white),))
    );
  }
}