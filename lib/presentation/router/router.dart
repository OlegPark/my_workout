import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_workout/presentation/features/auth/auth.dart';
import 'package:my_workout/presentation/features/createAcc/desiredWeight/desiredWeight.dart';
import 'package:my_workout/presentation/features/createAcc/performance/performance.dart';
import 'package:my_workout/presentation/features/createAcc/signup/signup.dart';
import 'package:my_workout/presentation/features/home/home.dart';
import 'package:my_workout/presentation/features/welcome/welcome.dart';
import 'package:my_workout/presentation/features/createAcc/gender/gender.dart';
import 'package:my_workout/presentation/features/createAcc/height/height.dart';
import 'package:my_workout/presentation/features/createAcc/weight/weight.dart';


final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const WelcomeScreen(),
      routes: [
        GoRoute(
          path: 'gender',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              transitionDuration: const Duration(seconds: 1),
              key: state.pageKey,
              child: const GenderScreen(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity:
                  CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
         GoRoute(
          path: 'height',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              transitionDuration: const Duration(seconds: 1),
              key: state.pageKey,
              child: const HeightScreen(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity:
                  CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                  child: child,
                );
              },
            );
          },
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
        GoRoute(
          path: 'signup',
          builder: (context, state) => const SignUpScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);