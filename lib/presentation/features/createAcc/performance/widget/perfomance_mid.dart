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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color.fromARGB(255, 100, 100, 100), width: 3),
              ),
              height: 44,
              width: 100,
              alignment: Alignment.center,
              child: const TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w900),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,

                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color.fromARGB(255, 100, 100, 100), width: 3),
              ),
              height: 44,
              width: 100,
              alignment: Alignment.center,
              child: const TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w900),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 19),
                  child: const Text(
                    'Макс.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 19),
                  child: const Text(
                    'приседаний',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: const Text(
                    'Макс.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: const Text(
                    'брусья',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color.fromARGB(255, 100, 100, 100), width: 3),
              ),
              height: 44,
              width: 100,
              alignment: Alignment.center,
              child: const TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w900),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color.fromARGB(255, 100, 100, 100), width: 3),
              ),
              height: 44,
              width: 100,
              alignment: Alignment.center,
              child: const TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w900),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}