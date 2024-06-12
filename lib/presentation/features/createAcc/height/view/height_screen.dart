import 'package:flutter/material.dart';
import 'package:my_workout/presentation/features/createAcc/height/widgets/height_bot.dart';
import '../../../../UI/theme/theme.dart';
import '../widgets/height_top.dart';
import '../widgets/heightscroll.dart';
import '../widgets/height_mid.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundDark,
      body: Column(
        children: [
          Expanded(child: TopPanelH()),
          Container(
            padding: const EdgeInsets.only(top: 212),
            child: const Text(
              'Рост',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Expanded(
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 0.88,
              useMagnifier: true,
              magnification: 1.5,
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
    );
  }
}


// body: SafeArea(
//         top: false,
//         bottom: false,
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/height.png'),
//               fit: BoxFit.cover,
//             )
//           ),
//           child: const Column(
//             children: [
//               TopPanelH(),
//               MidPanelH(),
//               BotPanelH(),
//             ],
//           ),
//         ),
//       ),