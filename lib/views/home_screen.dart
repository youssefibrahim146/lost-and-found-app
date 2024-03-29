import 'package:lost_found_app/constants/app_imports.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                AppStrings.profileAsset,
                width: 50,
                height: 50,
              ),
            ),
            Image.asset(
              AppStrings.lostAndFoundAsset,
              width: size.width,
              height: size.height * 0.48,
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    appButton(
                      text: AppStrings.lostSomethingCaText,
                      onTap: () {
                        Get.toNamed(AppStrings.lostSomethingRout);
                      },
                    ),
                    const SizedBox(height: 25),
                    appButton(
                      text: AppStrings.foundSomethingCaText,
                      onTap: () {
                        Get.toNamed(AppStrings.foundSomethingRout);
                      },
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

  Widget appButton({required String text, required VoidCallback onTap}) {
    return TextButton(
      onPressed: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromRGBO(58, 58, 58, 1),
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
