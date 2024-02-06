import 'package:flutter/material.dart';

class MidPanelPerf extends StatelessWidget {
  const MidPanelPerf({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 153),
          child: const Text(
            'Выполнение',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const SizedBox(height: 46),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'Макс.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w900
                  ),
                ),
                Text(
                  'подтягиваний',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w900
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Макс.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w900
                  ),
                ),
                Text(
                  'отжиманий',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w900
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          '75',
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.w900
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          '76',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 17,
            fontWeight: FontWeight.w900
          ),
        ),
      ],
    );
  }
}