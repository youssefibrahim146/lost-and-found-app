import 'package:lost_found_app/constants/app_imports.dart';

class FoundBySearchScreen extends GetWidget<FoundBySearchController> {
  const FoundBySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 28,
        ),
        elevation: 0,
        backgroundColor: AppColors.white,
        title: const Text(
          AppStrings.foundYourItemText,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(55, 55, 55, 0.6),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              AppStrings.searchForYourItemText,
              style: TextStyle(
                fontSize: 20.0,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller.searchController,
              decoration: InputDecoration(
                hintText: AppStrings.searchHereText,
                hintStyle: TextStyle(
                  color: AppColors.grey,
                ),
                prefixIcon: InkWell(
                  onTap: controller.searchOnClick,
                  child: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                filled: true,
                fillColor: AppColors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: AppColors.grey,
                  ),
                ),
              ),
              textInputAction: TextInputAction.search,
              onSubmitted: (value) => controller.searchOnClick(),
            ),
          ],
        ),
      ),
    );
  }
}
