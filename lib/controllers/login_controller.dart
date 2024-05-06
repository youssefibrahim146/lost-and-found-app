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
          print("=============================");
          print(e.code);
          isLoading.value = false;
          if (e.code == AppStrings.userNotFoundCode) {
            AppDefaults.defaultToast(AppStrings.userNotFoundToast);
          }else if(e.code == "invalid-credential"){
            AppDefaults.defaultToast("Email or Password is incorrect");
          }
          else if (e.code == AppStrings.wrongPasswordCode) {
            AppDefaults.defaultToast(AppStrings.wrongPasswordToast);
          } else if (e.code == AppStrings.tooManyRequestsCode) {
            AppDefaults.defaultToast(AppStrings.tooManyRequestsToast);
          } else if (e.code == AppStrings.userDisabledCode) {
            AppDefaults.defaultToast(AppStrings.userDisabledToast);
          } else if (e.code == AppStrings.emailAlreadyInUseCode) {
            AppDefaults.defaultToast(AppStrings.emailAlreadyInUseToast);
          } else if (e.code == AppStrings.weakPasswordCode) {
            AppDefaults.defaultToast(AppStrings.weakPasswordToast);
          } else if (e.code == AppStrings.invalidEmailCode) {
            AppDefaults.defaultToast(AppStrings.invalidEmailToast);
          } else if (e.code == AppStrings.operationNotAllowedCode) {
            AppDefaults.defaultToast(AppStrings.operationNotAllowedToast);
          } else if (e.code == AppStrings.emailNotVerifiedCode) {
            AppDefaults.defaultToast(AppStrings.emailNotVerifiedToast);
          } else {
            AppDefaults.defaultToast(AppFormats.textFormatter(e.toString(), AppStrings.spaceSign));

          }
          AppDefaults.defaultToast(AppFormats.textFormatter(e.toString(), AppStrings.spaceSign));
          return null;
        } catch (e) {
          isLoading.value = false;
          AppDefaults.defaultToast(AppFormats.textFormatter(e.toString(), AppStrings.spaceSign));
          return null;
        }
      } else {
        isLoading.value = false;
        AppDefaults.defaultToast(AppStrings.connectionErrorToast);
      }
    }
  }

  void onSubmitClick() async {
    UserCredential? res = await loginValidator();
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
