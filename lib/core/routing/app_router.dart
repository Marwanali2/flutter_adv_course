import 'package:flutter/material.dart';
import 'package:flutter_adv_course/core/routing/routes.dart';
import 'package:flutter_adv_course/features/login/ui/login_screen.dart';
import 'package:flutter_adv_course/features/on_boarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this argument to bassed in any screen like this ( arguments as className )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No Route Defined For ${settings.name}')),
                ));
    }
  }
}
