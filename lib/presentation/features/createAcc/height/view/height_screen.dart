import 'package:flutter/material.dart';
import '../../../../UI/theme/theme.dart';
import '../widgets/heightscroll.dart';
// import '../widgets/height_mid.dart';
// import '../widgets/height_top.dart';

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
      body: ListWheelScrollView.useDelegate(
        itemExtent: 50,
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: 100,
          builder: (context, index) {
            return MyHeight(
              heightU: index,
            );
          },
        )
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