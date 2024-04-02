import 'package:lost_found_app/constants/app_imports.dart';

class FoundByOtherScreen extends GetWidget<FoundByOtherController> {
  const FoundByOtherScreen({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                AppStrings.selectTheDataForYourItemText,
                style: TextStyle(
                  fontSize: 20.0,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controller.searchController,
                decoration: InputDecoration(
                  hintText: AppStrings.itemNameText,
                  hintStyle: TextStyle(
                    color: AppColors.grey,
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
              const SizedBox(height: 20),
              CoolDropdown<String>(
                dropdownList: controller.categoryMenu,
                controller: controller.categoryMenuController,
                defaultItem: CoolDropdownItem<String>(
                  label: AppStrings.categoryText,
                  value: AppStrings.emptySign,
                ),
                onChange: (value) {
                  controller.category.value = value;
                  if (controller.categoryMenuController.isOpen) {
                    controller.categoryMenuController.close();
                  }
                },
              ),
              const SizedBox(height: 20),
              CoolDropdown<String>(
                dropdownList: controller.conditionMenu,
                controller: controller.conditionMenuController,
                defaultItem: CoolDropdownItem<String>(
                  label: AppStrings.conditionField,
                  value: AppStrings.emptySign,
                ),
                onChange: (value) {
                  controller.condition.value = value;
                  if (controller.conditionMenuController.isOpen) {
                    controller.conditionMenuController.close();
                  }
                },
              ),
              const SizedBox(height: 50),
              TextButton(
                onPressed: controller.searchOnClick,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    AppStrings.searchText,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
