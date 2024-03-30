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
                vertical: 30,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: const BoxDecoration(
                color: AppColors.blue,
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
                      color: AppColors.white,
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
              key: controller.loginFomState,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AuthInputField(
                      onSaved: (value) {
                        controller.emailAddress = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppStrings.emailEmptyValidate;
                        } else if (!value.contains(AppStrings.atSign)) {
                          return AppStrings.emailMessingAtSignValidate;
                        }
                        return null;
                      },
                      obscure: false,
                      labelName: AppStrings.emailText,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20),
                    Obx(
                      () {
                        return AuthInputField(
                          onSaved: (value) {
                            controller.password = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppStrings.passwordEmptyValidate;
                            } else if (value.length < 8) {
                              return AppStrings.passwordLessThen8Validate;
                            } else if (value.length > 24) {
                              return AppStrings.passwordLargerThen24Validate;
                            }
                            return null;
                          },
                          suffixIcon: InkWell(
                            onTap: () => controller.obscureOnClick(),
                            child: Icon(controller.isObscure.value ? Icons.visibility_off_rounded : Icons.visibility_rounded),
                          ),
                          obscure: controller.isObscure.value,
                          labelName: AppStrings.passwordText,
                          keyboardType: TextInputType.visiblePassword,
                        );
                      },
                    ),
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
                    Center(
                      child: Obx(
                        () {
                          return controller.isLoading.value == false
                              ? InkWell(
                                  onTap: controller.onSubmitClick,
                                  child: Container(
                                    height: 70,
                                    width: 150,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: AppColors.blue,
                                      borderRadius: BorderRadius.circular(28),
                                    ),
                                    child: Text(
                                      AppStrings.signInText,
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                )
                              : CircleAvatar(
                                  radius: 25,
                                  backgroundColor: AppColors.blue,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: CircularProgressIndicator(
                                      color: AppColors.white,
                                    ),
                                  ),
                                );
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
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
