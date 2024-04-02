import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:lost_found_app/constants/app_imports.dart';

class FoundByOtherController extends GetxController {
  final categoryMenuController = DropdownController();
  final conditionMenuController = DropdownController();
  RxString category = AppStrings.emptySign.obs;
  RxString condition = AppStrings.emptySign.obs;
  List<CoolDropdownItem<String>> conditionMenu = [
    CoolDropdownItem<String>(
      label: AppStrings.newText,
      value: AppStrings.newText,
    ),
    CoolDropdownItem<String>(
      label: AppStrings.usedText,
      value: AppStrings.usedText,
    ),
  ];
  List<CoolDropdownItem<String>> categoryMenu = [
    CoolDropdownItem<String>(
      label: AppStrings.phoneText,
      value: AppStrings.phoneText,
    ),
    CoolDropdownItem<String>(
      label: AppStrings.keyText,
      value: AppStrings.keyText,
    ),
    CoolDropdownItem<String>(
      label: AppStrings.ringText,
      value: AppStrings.ringText,
    ),
    CoolDropdownItem<String>(
      label: AppStrings.walletText,
      value: AppStrings.walletText,
    ),
    CoolDropdownItem<String>(
      label: AppStrings.bagText,
      value: AppStrings.bagText,
    ),
    CoolDropdownItem<String>(
      label: AppStrings.glassesText,
      value: AppStrings.glassesText,
    ),
    CoolDropdownItem<String>(
      label: AppStrings.laptopText,
      value: AppStrings.laptopText,
    ),
    CoolDropdownItem<String>(
      label: AppStrings.watchText,
      value: AppStrings.watchText,
    ),
    CoolDropdownItem<String>(
      label: AppStrings.otherText,
      value: AppStrings.otherText,
    ),
  ];
  TextEditingController searchController = TextEditingController();

  void searchOnClick() {
    FocusManager.instance.primaryFocus?.unfocus();
    Get.toNamed(
      AppStrings.searchResultRout,
      arguments: [searchController.text, category.value, condition.value],
    );
    searchController.text = AppStrings.emptySign;
  }
}
