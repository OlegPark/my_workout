import 'package:flutter/material.dart';
import 'package:my_workout/presentation/features/createW/child_screen/createW1/widgets/createW1_mid.dart';
import 'package:my_workout/presentation/features/createW/child_screen/createW1/widgets/createW1_top.dart';

class CreateW1Screen extends StatelessWidget {
  const CreateW1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: SafeArea(
          child: Column(
            children: [
              CrWTop(),
              CrWMid(),
            ],
          )
        ),
    );
  }
}