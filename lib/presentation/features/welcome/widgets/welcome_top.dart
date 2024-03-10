import 'package:flutter/material.dart';

class WelcomeTop extends StatefulWidget {
  const WelcomeTop({
    super.key,
  });

  @override
  State<WelcomeTop> createState() => _WelcomeTopState();
}

class _WelcomeTopState extends State<WelcomeTop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/images/points.png'),
            ),
          ],
        ),
      ),
    );
  }
}