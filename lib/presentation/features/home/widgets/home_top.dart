import 'package:flutter/material.dart';

class TopPanelHome extends StatelessWidget {
  const TopPanelHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Image(
          image: AssetImage('assets/images/createW.png')),
      ),
    );
  }
}
