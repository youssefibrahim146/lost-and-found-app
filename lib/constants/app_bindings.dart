import 'package:lost_found_app/constants/app_imports.dart';
import 'package:lost_found_app/controllers/found_by_search_controller.dart';
import 'package:lost_found_app/controllers/searched_controller.dart';

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
    Get.lazyPut(
      () => FoundSomethingCategoryController(),
      fenix: true,
    );
    Get.lazyPut(
      () => SearchedController(),
      fenix: true,
    );
    Get.lazyPut(
      () => FoundBySearchController(),
      fenix: true,
    );
  }
}
