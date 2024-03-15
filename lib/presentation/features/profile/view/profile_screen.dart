import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../../UI/theme/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundDark,
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        color: Colors.grey,
        activeColor: Colors.white,
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Дмой',
          ),
          GButton(
            icon: Icons.favorite_border,
            text: 'Старт',
          ),
          GButton(
            icon: Icons.person,
            text: 'Профиль',
          ),
        ]
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
              // TopPanel(),
              // MidPanel(),
              // BotPanel(),
          ],
        ),
      ),
    );
  }
}