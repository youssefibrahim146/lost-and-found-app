import 'package:lost_found_app/constants/app_imports.dart';

class ForgetPasswordScreen extends GetWidget<ForgotPasswordController> {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 245, 252, 1),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 35,
        ),
        elevation: 0,
        backgroundColor: const Color.fromRGBO(242, 245, 252, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(120),
                ),
                width: 200,
                height: 200,
                child: Image.asset(AppStrings.sadFaceAsset),
              ),
              const SizedBox(height: 20),
              const Text(
                AppStrings.forgotPasswordText,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(55, 55, 55, 1),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                AppStrings.forgotPasswordSubTitleText,
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromRGBO(105, 105, 105, 1),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.20),
                      blurRadius: 20,
                      spreadRadius: 0.5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 25,
                ),
                child: Form(
                  key: controller.forgotPasswordFomState,
                  child: Column(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            AppStrings.sendText,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Obx(
                            () {
                              return !controller.isLoading.value
                                  ? InkWell(
                                      onTap: controller.onSubmitClick,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.blue,
                                          borderRadius: BorderRadius.circular(40),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5,
                                          horizontal: 30,
                                        ),
                                        child: const Icon(
                                          Icons.arrow_forward_rounded,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.blue,
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    );
                            },
                          ),
                        ],
                      ),
                    ],
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
