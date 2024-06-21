import 'package:flutter/material.dart';
import '../widget/dweight_bot.dart';
import '../widget/dweight_top.dart';
import '../widget/dweightscroll.dart';

class DesiredWScreen extends StatefulWidget {
  const DesiredWScreen({super.key});

  @override
  State<DesiredWScreen> createState() => _DesiredWScreenState();
}

class _DesiredWScreenState extends State<DesiredWScreen> {
  late FixedExtentScrollController _controllerdw;

  @override
  void initState() {
    super.initState();
    _controllerdw = FixedExtentScrollController();
  }

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
              image: AssetImage('assets/images/desiredWeight.png'),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            children: [
              const TopPanelDW(),
              Container(
                padding: const EdgeInsets.only(top: 160),
                child: const Text(
                  'Желаемый',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'вес',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListWheelScrollView.useDelegate(
                  controller: _controllerdw,
                  itemExtent: 50,
                  perspective: 0.002,
                  diameterRatio: 0.88,
                  useMagnifier: true,
                  magnification: 1.3,
                  physics: const FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 210,
                    builder: (context, index) {
                      return MyDWeight(
                        dweightU: index,
                      );
                    },
                  )
                ),
              ),
              const Expanded(child: BotPanelDW()),
            ],
          ),
        ),
      ),
    );
  }
}