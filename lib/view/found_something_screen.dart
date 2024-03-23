import 'package:flutter/material.dart';
import 'package:lost_found_app/constants/colors.dart';

import '../model/categories_data.dart';

class FoundSomethingScreen extends StatelessWidget {
  const FoundSomethingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CategoriesData categoriesData = CategoriesData();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 35,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Found Something",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(55, 55, 55, 0.6),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 5),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Please select the item you Found",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.62,
              //width: 165,
              child: GridView.builder(
                itemCount: categoriesData.categoriesData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 20),
                itemBuilder: (_, index) => categoryCard(
                  label: categoriesData.categoriesData[index].label,
                  img: categoriesData.categoriesData[index].img,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget categoryCard({required String label, required String img}) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            img,
            width: 80,
            color: const Color.fromRGBO(37, 37, 37, 1),
          ),
          const SizedBox(height: 16),
          Text(
            label,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(55, 55, 55, 1)),
          ),
        ],
      ),
    );
  }
}
