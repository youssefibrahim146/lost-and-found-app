import 'package:lost_found_app/constants/app_imports.dart';

class ForgotPasswordController extends GetxController {
  GlobalKey<FormState> forgotPasswordFomState = GlobalKey<FormState>();
  String? emailAddress;
  RxBool isLoading = false.obs;

  forgotPasswordValidator() async {
    FocusManager.instance.primaryFocus?.unfocus();
    var formData = forgotPasswordFomState.currentState;
    if (formData!.validate()) {
      formData.save();
      isLoading.value = true;
      var connection = await InternetConnectionChecker().hasConnection;
      if (connection == true) {
        try {
          var snapshot = await FirebaseFirestore.instance.collection(AppStrings.usersCollection).where(AppStrings.emailsField, arrayContains: emailAddress!).get();

          if (snapshot.docs.isNotEmpty) {
            await FirebaseAuth.instance.sendPasswordResetEmail(
              email: emailAddress!,
            );
            AppDefaults.defaultToast(AppStrings.emailSentSuccessfullyToast)
                .then(
                  (value) => isLoading.value = false,
                )
                .then(
                  (value) => Get.back(),
                );
          } else {
            isLoading.value = false;
            AppDefaults.defaultToast(AppStrings.yourEmailNotInOurDatabaseToast);
          }
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
    UserCredential res = await forgotPasswordValidator();
    if (res != null && FirebaseAuth.instance.currentUser!.emailVerified) {
      Get.offAllNamed(AppStrings.homeRout);
    } else {
      isLoading.value = false;
      AppDefaults.defaultToast(AppStrings.verifyEmailFirstToast);
    }
  }
}
