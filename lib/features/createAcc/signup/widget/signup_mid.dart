import 'package:flutter/material.dart';
import '../../../../UI/theme/theme.dart';

class MidPanelSign extends StatelessWidget {
  const MidPanelSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 36, right: 36),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 80),
              child: const Text(
                'Зарегистрироваться',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 180),
            const TextField(
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintText: 'Имя',
                hintStyle: wText,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  )
                )
              ),
            ),
            const SizedBox(height: 25),
            const TextField(
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintText: 'Фамилия',
                hintStyle: wText,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  )
                )
              ),
            ),
            const SizedBox(height: 25),
            const TextField(
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: wText,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  )
                )
              ),
            ),
            const SizedBox(height: 25),
            const TextField(
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintText: 'Пароль',
                hintStyle: wText,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  )
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}