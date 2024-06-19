import 'package:flutter/material.dart';
import '../widget/weight_bot.dart';
import '../widget/weight_top.dart';
import '../widget/weightscroll.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  late FixedExtentScrollController _controllerw;

  @override
  void initState() {
    super.initState();
    _controllerw = FixedExtentScrollController();
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
              image: AssetImage('assets/images/weight.png'),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            children: [
              const TopPanelW(),
              Container(
                padding: const EdgeInsets.only(top: 185),
                child: const Text(
                  'Вес',
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
                  controller: _controllerw,
                  itemExtent: 50,
                  perspective: 0.002,
                  diameterRatio: 0.88,
                  useMagnifier: true,
                  magnification: 1.3,
                  physics: const FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 210,
                    builder: (context, index) {
                      return MyWeight(
                        weightU: index,
                      );
                    },
                  )
                ),
              ),
              const Expanded(child: BotPanelWeigh()),
            ],
          ),
        ),
      ),
    );
  }
}