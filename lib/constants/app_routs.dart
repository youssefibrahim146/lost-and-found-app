import 'package:lost_found_app/constants/app_imports.dart';

class AppRouts {
  static List<GetPage> appPages = [
    GetPage(
      name: AppStrings.loginRout,
      page: () => const LoginScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.signUpRout,
      page: () => const SignupScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.homeRout,
      page: () => const HomeScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.forgotPasswordRout,
      page: () => const ForgetPasswordScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.foundSomethingRout,
      page: () => const FoundSomethingScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.lostSomethingRout,
      page: () => const LostSomethingScreen(),
      transition: Transition.noTransition,
    ),
  ];
// Route? generateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case AppStrings.loginScreen:
//       return MaterialPageRoute(
//         builder: (_) => const LoginScreen(),
//       );
//     case AppStrings.signupScreen:
//       return MaterialPageRoute(
//         builder: (_) => const SignupScreen(),
//       );
//     case AppStrings.homeScreen:
//       return MaterialPageRoute(
//         builder: (_) => const HomeScreen(),
//       );
//     case AppStrings.foundSomethingScreen:
//       return MaterialPageRoute(
//         builder: (_) => const FoundSomethingScreen(),
//       );
//     case AppStrings.lostSomethingScreen:
//       return MaterialPageRoute(
//         builder: (_) => const LostSomethingScreen(),
//       );
//     case AppStrings.forgetPasswordScreen:
//       return MaterialPageRoute(
//         builder: (_) => const ForgetPasswordScreen(),
//       );
//   }
// }
}
