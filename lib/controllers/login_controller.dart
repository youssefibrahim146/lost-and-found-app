import 'package:lost_found_app/constants/app_imports.dart';

class LoginController extends GetxController {
  onSubmitClick() {}

  void onForgotPasswordClick() {
    Get.toNamed(AppStrings.forgotPasswordRout);
  }

  void onSignUpClick() {
    Get.offNamed(AppStrings.signUpRout);
  }
}
