import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/strings.dart';
import 'widgets/auth_input_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/signup image.png"),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(10),
              child: const AuthInputField(label: "First Name"),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const AuthInputField(label: "Last Name"),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const AuthInputField(label: "Email"),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const AuthInputField(label: "Password"),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const AuthInputField(label: "Re-type Password"),
            ),
            TextButton(
              onPressed: () {},
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                  decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(28)),
                  child: const Text(
                    "Signup",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: whiteColor),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Get.offNamed(loginScreen);
              },
              child: const Text("Already a User? Sign in",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(55, 55, 55, 1)
              ),),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
