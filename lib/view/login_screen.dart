import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_found_app/constants/colors.dart';
import 'package:lost_found_app/constants/strings.dart';

import 'widgets/auth_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 35),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: const BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                    ),
                  ),
                  Image.asset(
                    "assets/login image.png",
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4 - 17,
                  )
                ],
              ),
            ),
            Form(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AuthInputField(label: "Email"),
                    const SizedBox(height: 20),
                    const AuthInputField(label: "Password"),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Get.toNamed(forgetPasswordScreen);
                      },
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(55, 55, 55, 1)),
                      ),
                    ),
                    // sign in button
                    TextButton(
                      onPressed: () {
                        Get.offNamed(homeScreen);
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          decoration: BoxDecoration(
                              color: blueColor,
                              borderRadius: BorderRadius.circular(28)),
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: whiteColor),
                          ),
                        ),
                      ),
                    ),
                    // not a user text
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Get.offNamed(signupScreen);
                        },
                        child: const Text(
                          "Not a User? Signup",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(55, 55, 55, 1)),
                        ),
                      ),
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
}
