import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';

import '../constants/app_imports.dart';

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
          "Found your item",
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
        decoration: const BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Text(
              "Select the data of your lost item",
              style: TextStyle(
                fontSize: 20.0,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            CoolDropdown<String>(
              dropdownList: controller.colorsMenu,
              controller: controller.typeMenuController,
              onChange: (value) {
                if (controller.colorMenuController.isOpen) {
                  controller.colorMenuController.close();
                }
              },
              defaultItem: CoolDropdownItem<String>(
                label: 'Type',
                value: '',
              ),
            ),
            const SizedBox(height: 20),
            CoolDropdown<String>(
              dropdownList: controller.colorsMenu,
              controller: controller.colorMenuController,
              defaultItem: CoolDropdownItem<String>(
                label: 'Color',
                value: '',
              ),
              onChange: (value) {
                if (controller.colorMenuController.isOpen) {
                  controller.colorMenuController.close();
                }
              },
            ),
            const SizedBox(height: 20),
            CoolDropdown<String>(
              dropdownList: controller.colorsMenu,
              controller: controller.colorMenuController,
              defaultItem: CoolDropdownItem<String>(
                label: 'model',
                value: '',
              ),
              onChange: (value) {
                if (controller.modelMenuController.isOpen) {
                  controller.colorMenuController.close();
                }
              },
            ),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {},
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
                  "Continue",
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
    );
  }
}
