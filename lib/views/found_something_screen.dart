import 'package:lost_found_app/constants/app_imports.dart';

class FoundSomethingScreen extends GetWidget<FoundSomethingController> {
  const FoundSomethingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 35,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          AppStrings.foundSomethingSmText,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(55, 55, 55, 0.6),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: controller.formState,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Obx(
                        () {
                          return MasonryGridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: controller.images.length,
                            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            itemBuilder: (itemBuilder, index) {
                              return InkWell(
                                onLongPress: () => controller.imageOnLongPressed(index),
                                child: Obx(
                                  () {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.file(
                                        controller.images[index],
                                        fit: BoxFit.cover,
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                      Obx(
                        () {
                          return controller.images.length == 0
                              ? SizedBox(
                                  height: 0,
                                )
                              : SizedBox(
                                  height: 15,
                                );
                        },
                      ),
                      Obx(
                        () {
                          return Center(
                            child: controller.images.length == 0
                                ? InkWell(
                                    onTap: controller.pickImages,
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(
                                        Icons.camera_rounded,
                                        color: AppColors.blue,
                                        size: 50,
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    height: 0,
                                  ),
                          );
                        },
                      ),
                      controller.categoryFromArgs.hasCategory
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(height: 50),
                                Text(
                                  AppStrings.categoryText,
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    isExpanded: true,
                                    hint: Row(
                                      children: [
                                        Icon(
                                          Icons.category_rounded,
                                          size: 24,
                                          color: AppColors.white,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Obx(
                                          () {
                                            return Text(
                                              controller.categoryBHint.value == AppStrings.emptySign ? AppStrings.selectCategoryText : controller.categoryBHint.value,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.white,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                    items: controller.categoriesList
                                        .map(
                                          (item) => DropdownMenuItem(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.blue,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) {
                                      controller.categoryBHint.value = value!;
                                    },
                                    buttonStyleData: ButtonStyleData(
                                      height: 25,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    iconStyleData: IconStyleData(
                                      icon: Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        size: 24,
                                        color: AppColors.white,
                                      ),
                                      openMenuIcon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        size: 24,
                                        color: AppColors.white,
                                      ),
                                      iconSize: 20,
                                      iconEnabledColor: AppColors.white,
                                      iconDisabledColor: AppColors.white,
                                    ),
                                    dropdownStyleData: DropdownStyleData(
                                      maxHeight: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        color: AppColors.white,
                                      ),
                                      scrollbarTheme: ScrollbarThemeData(
                                        radius: Radius.circular(15),
                                      ),
                                    ),
                                    menuItemStyleData: MenuItemStyleData(
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : SizedBox(
                              height: 0,
                            ),
                      controller.categoryFromArgs.hasCondition
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(height: 50),
                                Text(
                                  AppStrings.conditionText,
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Wrap(
                                  spacing: 8,
                                  runSpacing: 4,
                                  children: [
                                    Obx(
                                      () {
                                        return InkWell(
                                          onTap: controller.newButtonOnClick,
                                          child: Container(
                                            height: 35,
                                            width: 70,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: controller.newSelected.value == false ? AppColors.white : AppColors.blue,
                                              borderRadius: BorderRadius.circular(15),
                                              border: Border.all(
                                                color: controller.newSelected.value == false ? AppColors.blue : AppColors.white,
                                              ),
                                            ),
                                            child: Text(
                                              AppStrings.newText,
                                              style: TextStyle(
                                                color: controller.newSelected.value == false ? AppColors.blue : AppColors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    Obx(
                                      () {
                                        return InkWell(
                                          onTap: controller.usedButtonOnClick,
                                          child: Container(
                                            height: 35,
                                            width: 70,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: controller.usedSelected.value == false ? AppColors.white : AppColors.blue,
                                              borderRadius: BorderRadius.circular(15),
                                              border: Border.all(
                                                color: controller.usedSelected.value == false ? AppColors.blue : AppColors.white,
                                              ),
                                            ),
                                            child: Text(
                                              AppStrings.usedText,
                                              style: TextStyle(
                                                color: controller.usedSelected.value == false ? AppColors.blue : AppColors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : SizedBox(
                              height: 0,
                            ),
                      Divider(height: 50),
                      Text(
                        AppStrings.infoText,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AuthInputField(
                        color: AppColors.white,
                        onSaved: (value) {
                          controller.title.value = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return AppStrings.titleEmptyValidate;
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        labelName: AppStrings.titleText,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      AuthInputField(
                        color: AppColors.white,
                        maxLines: 10,
                        onSaved: (value) {
                          controller.description.value = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return AppStrings.descriptionEmptyValidate;
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        labelName: AppStrings.descriptionText,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      AuthInputField(
                        color: AppColors.white,
                        maxLines: 10,
                        onSaved: (value) {
                          controller.founderPhoneNumber.value = value!;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppStrings.phoneNumberEmptyValidate;
                          } else if (value[0] != "0") {
                            return AppStrings.phoneNumberBadlyFormattedValidate;
                          } else if (value[1] != "1") {
                            return AppStrings.phoneNumberBadlyFormattedValidate;
                          } else if (value.length <= 10) {
                            return AppStrings.invalidPhoneNumberValidate;
                          } else if (value.length >= 12) {
                            return AppStrings.invalidPhoneNumberValidate;
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        labelName: AppStrings.phoneNumberText,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Obx(
                          () {
                            return controller.isLoading.value == false
                                ? InkWell(
                                    onTap: controller.uploadOnClick,
                                    child: Container(
                                      height: 50,
                                      width: 150,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text(
                                        AppStrings.uploadText,
                                        style: TextStyle(
                                          color: AppColors.blue,
                                          fontSize: 20,
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
                      SizedBox(
                        height: 15,
                      ),
                    ],
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
