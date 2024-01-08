import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        top: false,
        bottom: false,
         child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/welcome.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text('Стань лучшей версией себя', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
         ),
       ),
    );
  }
}