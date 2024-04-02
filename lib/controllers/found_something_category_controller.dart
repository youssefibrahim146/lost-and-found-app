import 'package:lost_found_app/constants/app_imports.dart';

class FoundSomethingCategoryController extends GetxController {
  List<Categories> categoriesData = [
    Categories(
      AppStrings.phoneText,
      img: AppStrings.phoneAsset,
      hasCategory: false,
      hasCondition: true,
    ),
    Categories(
      AppStrings.keyText,
      img: AppStrings.keyAsset,
      hasCategory: false,
      hasCondition: false,
    ),
    Categories(
      AppStrings.ringText,
      img: AppStrings.ringAsset,
      hasCategory: false,
      hasCondition: false,
    ),
    Categories(
      AppStrings.walletText,
      img: AppStrings.walletAsset,
      hasCategory: false,
      hasCondition: false,
    ),
    Categories(
      AppStrings.bagText,
      img: AppStrings.bagAsset,
      hasCategory: false,
      hasCondition: false,
    ),
    Categories(
      AppStrings.glassesText,
      img: AppStrings.glassesAsset,
      hasCategory: false,
      hasCondition: true,
    ),
    Categories(
      AppStrings.laptopText,
      img: AppStrings.laptopAsset,
      hasCategory: false,
      hasCondition: true,
    ),
    Categories(
      AppStrings.watchText,
      img: AppStrings.watchAsset,
      hasCategory: false,
      hasCondition: true,
    ),
    Categories(
      AppStrings.otherText,
      img: AppStrings.otherAsset,
      hasCategory: true,
      hasCondition: true,
    ),
  ];
}
