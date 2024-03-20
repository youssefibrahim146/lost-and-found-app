import 'package:flutter/material.dart';
import 'package:lost_found_app/constants/colors.dart';

class LostSomethingScreen extends StatelessWidget {
  const LostSomethingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 35,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Lost Something",
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
              "Please select the item you lost",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.62,
              //width: 165,
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 20
                ),
                itemBuilder: (_, index) => Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone_android_outlined,
                        size: 70,
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Phone",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(55, 55, 55, 1)),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
