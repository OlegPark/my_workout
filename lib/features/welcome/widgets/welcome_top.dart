import 'package:flutter/material.dart';

class WelcomeTop extends StatelessWidget {
  const WelcomeTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}