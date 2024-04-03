import 'package:lost_found_app/constants/app_imports.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemDetailsController extends GetxController {
  PostsModel item = Get.arguments;

  void phoneIconOnClick() {
    launch(AppStrings.telText + item.founderPhoneNumber);
  }
}
