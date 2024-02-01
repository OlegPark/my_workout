import 'package:go_router/go_router.dart';
import 'package:my_workout/features/createAcc/gender/gender.dart';
import 'package:my_workout/features/createAcc/height/height.dart';
import 'package:my_workout/features/createAcc/weight/view/view.dart';
import 'package:my_workout/features/welcome/view/view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const WelcomeScreen(),
      routes: [
        GoRoute(
          path: 'gender',
          builder: (context, state) => const GenderScreen(),
        ),
        GoRoute(
          path: 'height',
          builder: (context, state) => const HeightScreen(),
        ),
        GoRoute(
          path: 'weight',
          builder: (context, state) => const WeightScreen(),
        ),
      ],
    ),
  ],
);