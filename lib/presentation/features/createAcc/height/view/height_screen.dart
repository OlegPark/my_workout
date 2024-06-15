import 'package:flutter/material.dart';
import 'package:my_workout/presentation/features/createAcc/height/widgets/height_bot.dart';
import '../../../../UI/theme/theme.dart';
import '../widgets/height_top.dart';
import '../widgets/heightscroll.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  late FixedExtentScrollController _controllerh;

  @override
  void initState() {
    super.initState();
    _controllerh = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundDark,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/height.png'
              ),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            children: [
              TopPanelH(),
              Container(
                padding: const EdgeInsets.only(top: 185),
                child: const Text(
                  'Рост',
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
                  controller: _controllerh,
                  itemExtent: 50,
                  perspective: 0.002,
                  diameterRatio: 0.88,
                  useMagnifier: true,
                  magnification: 1.3,
                  physics: FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 210,
                    builder: (context, index) {
                      return MyHeight(
                        heightU: index,
                      );
                    },
                  )
                ),
              ),
              Expanded(child: BotPanelH()),
            ],
          ),
        ),
      ),
    );
  }
}