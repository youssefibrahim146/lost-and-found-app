import 'package:lost_found_app/constants/app_imports.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> loginFomState = GlobalKey<FormState>();
  String? emailAddress, password;
  RxBool isObscure = RxBool(true);
  RxBool isLoading = RxBool(false);

  loginValidator() async {
    FocusManager.instance.primaryFocus?.unfocus();
    var formData = loginFomState.currentState;
    if (formData!.validate()) {
      formData.save();
      isLoading.value = true;
      var connection = await InternetConnectionChecker().hasConnection;
      if (connection == true) {
        try {
          UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress!,
            password: password!,
          );
          return userCredential;
        } on FirebaseAuthException catch (e) {
          isLoading.value = false;
          AppDefaults.defaultToast(AppFormats.textFormatter(e.toString(), AppStrings.spaceSign));
        } catch (e) {
          isLoading.value = false;
          AppDefaults.defaultToast(AppFormats.textFormatter(e.toString(), AppStrings.spaceSign));
        }
      } else {
        isLoading.value = false;
        AppDefaults.defaultToast(AppStrings.connectionErrorToast);
      }
    }
  }

  void onSubmitClick() async {
    UserCredential res = await loginValidator();
    if (res != null && FirebaseAuth.instance.currentUser!.emailVerified) {
      Get.offAllNamed(AppStrings.homeRout);
    } else {
      isLoading.value = false;
      AppDefaults.defaultToast(AppStrings.verifyEmailFirstToast);
    }
  }

  void onForgotPasswordClick() {
    Get.toNamed(AppStrings.forgotPasswordRout);
  }

  void onSignUpClick() {
    Get.offNamed(AppStrings.signUpRout);
  }

  void obscureOnClick() {
    isObscure.value = !isObscure.value;
  }
}
