import 'package:go_router/go_router.dart';
import 'package:my_workout/features/auth/view/auth_screen.dart';
import 'package:my_workout/features/createAcc/desiredWeight/view/desiredW_screen.dart';
import 'package:my_workout/features/createAcc/performance/view/performance_screen.dart';
import 'package:my_workout/features/welcome/welcome.dart';
import 'package:my_workout/features/createAcc/gender/gender.dart';
import 'package:my_workout/features/createAcc/height/height.dart';
import 'package:my_workout/features/createAcc/weight/weight.dart';


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
        GoRoute(
          path: 'dweight',
          builder: (context, state) => const DesiredWScreen(),
        ),
        GoRoute(
          path: 'perfomance',
          builder: (context, state) => const PerfomanceScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthScreen(),
    ),
  ],
);