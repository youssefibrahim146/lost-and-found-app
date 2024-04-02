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
    GetPage(
      name: AppStrings.foundByOtherRout,
      page: () => const FoundByOtherScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.foundBySearchRout,
      page: () => const FoundBySearchScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.addFoundItemRout,
      page: () => const AddFoundItemScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.searchResultRout,
      page: () => const SearchResultScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.itemDetailsRout,
      page: () => const ItemDetails(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.foundSomethingCategoryRout,
      page: () => const FoundSomethingCategoryScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.searchResultRout,
      page: () => const SearchResultScreen(),
      transition: Transition.noTransition,
    ),
  ];
}
