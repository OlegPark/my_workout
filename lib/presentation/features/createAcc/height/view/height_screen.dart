import 'package:flutter/material.dart';
// import '../widgets/height_bot.dart';
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
      body: ListWheelScrollView(
        itemExtent: 50,
        perspective: 0.01,
        diameterRatio: 1,
        children: [
          Container(
            color: Colors.blue,
            child: Center(child: Text('Hello')),
          ),
           Container(
            color: Colors.blue,
            child: Center(child: Text('Hello')),
          ),
           Container(
            color: Colors.blue,
            child: Center(child: Text('Hello')),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text('Hello')),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text('Hello')),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text('Hello')),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text('Hello')),
          ),
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