import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:lost_found_app/constants/app_imports.dart';

class HomeController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  final profileMenuController = DropdownController();

  void logout() {
    auth.signOut().then(
          (value) => Get.offAllNamed(AppStrings.loginRout),
        );
  }
}
