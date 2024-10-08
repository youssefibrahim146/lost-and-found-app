import 'package:flutter/material.dart';
import 'package:lost_found_app/constants/app_imports.dart';

class LostSomethingScreen extends GetWidget<LostSomethingController> {
  const LostSomethingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 35,
        ),
        elevation: 0,
        backgroundColor: AppColors.white,
        title: const Text(
          AppStrings.lostSomethingSmText,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(55, 55, 55, 0.6),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            width: double.infinity,
            color: AppColors.white,
            child: Image.asset(
              AppStrings.sadFaceAsset,
              width: 150,
              height: 150,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 35,
              ),
              decoration: const BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    AppStrings.helpToFindYourLostItemText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 75.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // add button
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(AppStrings.foundByOtherRout);
                            },
                            child: Icon(
                              Icons.add_circle_outline,
                              size: 80.0,
                              color: AppColors.white,
                            ),
                          ),
                          SizedBox(height: 14),
                          Text(
                            AppStrings.otherText,
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 6,
                        height: 150,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      // search button
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppStrings.foundBySearchRout);
                        },
                        child: const Column(
                          children: [
                            Icon(
                              Icons.search_rounded,
                              size: 80.0,
                              color: AppColors.white,
                            ),
                            SizedBox(height: 14),
                            Text(
                              AppStrings.searchText,
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LostItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
