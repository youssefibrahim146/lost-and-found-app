import 'package:lost_found_app/constants/app_imports.dart';

class FoundBySearchController extends GetxController {
  TextEditingController searchController = TextEditingController();

  void searchOnClick() {
    FocusManager.instance.primaryFocus?.unfocus();
    Get.toNamed(
      AppStrings.searchResultRout,
      arguments: [searchController.text, AppStrings.emptySign, AppStrings.emptySign],
    );
    searchController.text = AppStrings.emptySign;
  }
}
