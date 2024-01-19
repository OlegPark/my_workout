import 'package:flutter/material.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

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
              image: AssetImage('assets/images/gender.png'),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('object');
                      },
                      child: Image.asset('assets/images/back.png'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      child: Image.asset(
                        'assets/images/20proc.png'
                      ),
                    ),
                  ],
                ),
              ),
              Text('Mid'),
              Text('Bot'),
            ],
          ),
        ),
      ),
    );
  }
}