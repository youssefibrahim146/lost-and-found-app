import 'package:lost_found_app/constants/app_imports.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(),
      fenix: true,
    );
    Get.lazyPut(
      () => SignupController(),
      fenix: true,
    );
    Get.lazyPut(
      () => ForgotPasswordController(),
      fenix: true,
    );
    Get.lazyPut(
      () => FoundSomethingController(),
      fenix: true,
    );
    Get.lazyPut(
      () => LostSomethingController(),
      fenix: true,
    );
    Get.lazyPut(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut(
      () => FoundByOtherController(),
      fenix: true,
    );
  }
}
