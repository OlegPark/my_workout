import 'package:flutter/material.dart';
import 'package:my_workout/presentation/features/createAcc/signup/widget/signup_bot.dart';
import '../widget/signup_top.dart';
import '../widget/signup_mid.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/signup.png'),
              fit: BoxFit.cover,
            )
          ),
          child: const Column(
            children: [
              TopPanelSign(),
              MidPanelSign(),
              BotPanelSign(),
            ],
          ),
        ),
      ),
    );
  }
}