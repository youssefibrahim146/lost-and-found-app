import 'package:lost_found_app/constants/app_imports.dart';

class AppDefaults {
  static Future<bool?> defaultToast(text) {
    return Fluttertoast.showToast(
      msg: text,
      backgroundColor: Colors.transparent,
      textColor: AppColors.white,
      fontSize: 14,
    );
  }
}
