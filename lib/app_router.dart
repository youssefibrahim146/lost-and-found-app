import 'package:flutter/material.dart';
import 'package:lost_found_app/view/home_screen.dart';
import 'package:lost_found_app/view/login_screen.dart';
import 'package:lost_found_app/view/lost_something_screen.dart';
import 'package:lost_found_app/view/signup_screen.dart';

import 'constants/strings.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case signupScreen:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
        case lostSomthingScreen:
        return MaterialPageRoute(
          builder: (_) => const LostSomethingScreen(),
        );
    }
  }
}
