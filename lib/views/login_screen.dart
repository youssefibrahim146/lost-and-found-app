import 'package:lost_found_app/constants/app_imports.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 35,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: const BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    AppStrings.loginText,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  Image.asset(
                    AppStrings.loginAsset,
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4 - 17,
                  )
                ],
              ),
            ),
            Form(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AuthInputField(AppStrings.emailText),
                    const SizedBox(height: 20),
                    const AuthInputField(AppStrings.passwordText),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: controller.onForgotPasswordClick,
                      child: const Text(
                        AppStrings.forgotPasswordText + AppStrings.questionSign,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromRGBO(55, 55, 55, 1),
                        ),
                      ),
                    ),
                    // sign in button
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
                            AppStrings.signInText,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // not a user text
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: controller.onSignUpClick,
                        child: const Text(
                          AppStrings.notUserText + AppStrings.questionSign + AppStrings.spaceSign + AppStrings.signupText,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(55, 55, 55, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
