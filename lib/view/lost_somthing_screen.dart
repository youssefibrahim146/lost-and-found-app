import 'package:flutter/material.dart';
import 'package:lost_found_app/constants/colors.dart';

class LostSomethingScreen extends StatelessWidget {
  const LostSomethingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 35,
        ),
        elevation: 0,
        backgroundColor: whiteColor,
        title: const Text(
          'Lost Something',
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
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            color: whiteColor,
            child: Image.asset(
              "assets/sad face.png",
              width: 150,
              height: 150,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 35),
              decoration: const BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child:  Column(
                children: [
                  const Text(
                    'Help Us to find your lost item',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 75.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            size: 80.0,
                            color: whiteColor,
                          ),
                          SizedBox(height: 14),
                          Text(
                            "Other",
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 30
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 6,
                        height: 150,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      const Column(
                        children: [
                          Icon(
                            Icons.search_rounded,
                            size: 80.0,
                            color: whiteColor,
                          ),
                          SizedBox(height: 14),
                          Text(
                            "Search",
                            style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 30
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
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
