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
          child: Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Image.asset('assets/images/points.png'),
                      ),
                    ],
                  ),
                ),
              ),
              Text('Стань лучшей версией себя', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),),
            ],
          ),
         ),
       ),
    );
  }
}