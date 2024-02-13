import 'package:flutter/material.dart';

class BotPanelHome extends StatelessWidget {
  const BotPanelHome({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Home'
        ),
         NavigationDestination(
          icon: Icon(Icons.explore),
          label: 'Explore'
        ),
         NavigationDestination(
          icon: Icon(Icons.person),
          label: 'Person'
        ),
         NavigationDestination(
          icon: Icon(Icons.settings),
          label: 'Settings'
        ),
      ],
    );
  }
}