import 'package:flutter/material.dart';

import '../widget/auth_top.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

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
              image: AssetImage('assets/images/auth.png'),
              fit: BoxFit.cover,
            )
          ),
          child: const Column(
            children: [
              TopPanelAuth(),
              // MidPanelG(),
              // BotPanelG(),
            ],
          ),
        ),
      ),
    );
  }
}