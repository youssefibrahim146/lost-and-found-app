import 'package:lost_found_app/constants/app_imports.dart';

class LostSomethingController extends GetxController {
  List<Categories> categoriesData = [
    Categories(img: AppStrings.phoneAsset, label: AppStrings.phoneText),
    Categories(img: AppStrings.keyAsset, label: AppStrings.keyText),
    Categories(img: AppStrings.ringAsset, label: AppStrings.ringText),
    Categories(img: AppStrings.walletAsset, label: AppStrings.walletText),
    Categories(img: AppStrings.bagAsset, label: AppStrings.bagText),
    Categories(img: AppStrings.glassesAsset, label: AppStrings.glassesText),
    Categories(img: AppStrings.laptopAsset, label: AppStrings.laptopText),
    Categories(img: AppStrings.watchAsset, label: AppStrings.watchText),
    Categories(img: AppStrings.otherAsset, label: AppStrings.otherText),
  ];
}
