import 'package:lost_found_app/constants/app_imports.dart';

class SignupScreen extends GetWidget<SignupController> {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppStrings.signupAsset),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(10),
              child: const AuthInputField(AppStrings.userNameText),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const AuthInputField(AppStrings.emailText),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const AuthInputField(AppStrings.passwordText),
            ),
            TextButton(
              onPressed: controller.onSubmitClick,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 40,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: const Text(
                    AppStrings.signupText,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: controller.onLoginClick,
              child: const Text(
                AppStrings.alreadyUserText + AppStrings.questionSign + AppStrings.spaceSign + AppStrings.loginText,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(55, 55, 55, 1),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
