import 'package:flutter/material.dart';
import '../widget/dweight_bot.dart';
import '../widget/dweight_mid.dart';
import '../widget/dweight_top.dart';

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
              TopPanelDW(),
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
              BotPanelDW(),
            ],
          ),
        ),
      ),
    );
  }
}