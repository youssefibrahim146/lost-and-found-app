import 'package:lost_found_app/constants/app_imports.dart';

class SignupScreen extends GetWidget<SignupController> {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: controller.signupFomState,
          child: Column(
            children: [
              Image.asset(AppStrings.signupAsset),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: AuthInputField(
                  onSaved: (value) {
                    controller.userName = value!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.userNameEmptyValidate;
                    }
                    return null;
                  },
                  labelName: AppStrings.userNameText,
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: AuthInputField(
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
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Obx(
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
              ),
              const SizedBox(height: 10),
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
                                AppStrings.signupText,
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
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
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
      ),
    );
  }
}
