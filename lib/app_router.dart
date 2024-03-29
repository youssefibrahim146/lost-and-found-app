import 'package:flutter/material.dart';
import 'package:lost_found_app/view/forget_password_screen.dart';
import 'package:lost_found_app/view/home_screen.dart';
import 'package:lost_found_app/view/login_screen.dart';
import 'package:lost_found_app/view/found_something_screen.dart';
import 'package:lost_found_app/view/lost_somthing_screen.dart';
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
        case foundSomethingScreen:
        return MaterialPageRoute(
          builder: (_) => const FoundSomethingScreen(),
        );
        case lostSomethingScreen:
        return MaterialPageRoute(
          builder: (_) => const LostSomethingScreen(),
        );
        case forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordScreen(),
        );
    }
  }
}
