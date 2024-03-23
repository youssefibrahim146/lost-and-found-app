import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_found_app/constants/colors.dart';

import '../constants/strings.dart';

class HomeScreen extends StatelessWidget {
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
                "assets/profile icon.png",
                width: 50,
                height: 50,
              ),
            ),
            Image.asset(
              "assets/lost and found icon.png",
              width: size.width,
              height: size.height * 0.48,
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    appButton(text: "LOST SOMETHING", onTap: () {
                      Get.toNamed(lostSomethingScreen);
                    }),
                    const SizedBox(height: 25),
                    appButton(
                        text: "FOUND SOMETHING",
                        onTap: () {
                          Get.toNamed(foundSomethingScreen);
                        }),
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Color.fromRGBO(58, 58, 58, 1),
              fontSize: 23,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
