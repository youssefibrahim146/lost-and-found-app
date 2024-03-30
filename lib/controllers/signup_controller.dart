import 'package:lost_found_app/constants/app_imports.dart';

class SignupController extends GetxController {
  GlobalKey<FormState> signupFomState = GlobalKey<FormState>();
  RxBool isLoading = false.obs;
  RxBool isObscure = true.obs;
  String? userName, emailAddress, password;

  signUpValidator() async {
    FocusManager.instance.primaryFocus?.unfocus();
    var formData = signupFomState.currentState;
    if (formData!.validate()) {
      formData.save();
      isLoading.value = true;
      var connection = await InternetConnectionChecker().hasConnection;
      if (connection == true) {
        try {
          UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailAddress!,
            password: password!,
          );
          if (userCredential.user!.emailVerified == false) {
            await FirebaseAuth.instance.currentUser!.sendEmailVerification();
            await FirebaseAuth.instance.signOut();
            await FirebaseFirestore.instance.collection(AppStrings.usersCollection).doc(emailAddress).set({
              AppStrings.nameField: userName,
              AppStrings.emailField: emailAddress,
            });
            await FirebaseFirestore.instance.collection(AppStrings.usersCollection).doc(AppStrings.authUsersDocument).set(
              {
                AppStrings.emailsField: FieldValue.arrayUnion([emailAddress!])
              },
              SetOptions(merge: true),
            ).then(
              (value) => Get.offAllNamed(AppStrings.loginRout),
            );
          } else {
            return userCredential;
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
    UserCredential res = await signUpValidator();
    if (res != null) {
      Get.offAllNamed(AppStrings.homeRout);
    }
  }

  void onLoginClick() {
    Get.offNamed(AppStrings.loginRout);
  }

  void obscureOnClick() {
    isObscure.value = !isObscure.value;
  }
}
