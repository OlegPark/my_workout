import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class TopPanelAuth extends StatelessWidget {
  const TopPanelAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => context.go('/'),
            child: Image.asset('assets/images/back.png'),
          ),
        ],
      ),
    );
  }
}