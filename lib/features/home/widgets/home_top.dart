import 'package:flutter/material.dart';

class TopPanelHome extends StatelessWidget {
  const TopPanelHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Home'),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings
          ),
        )
      ],
      backgroundColor: Colors.black,
    );
  }
}