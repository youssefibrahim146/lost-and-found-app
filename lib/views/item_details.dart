import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:lost_found_app/constants/app_imports.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 28,
        ),
        elevation: 0,
        backgroundColor: AppColors.white,
        title: Text(
          data.title,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(55, 55, 55, 0.6),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.call_rounded,
          color: AppColors.blue,
        ),
        backgroundColor: AppColors.white,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 0),
        decoration: const BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: imageList(imgList: data.imageUrls),
                options: CarouselOptions(
                  height: 210,
                  aspectRatio: 19 / 9,
                  viewportFraction: 0.5,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(height: 20),
              Divider(
                color: AppColors.white,
                thickness: 4,
                indent: 35,
                endIndent: 35,
              ),
              const SizedBox(height: 20),
              roundedContainerWithDetails(
                text: "Condition",
                details: data.condition,
              ),
              const SizedBox(height: 30),
              roundedContainerWithDetails(
                text: "Type",
                details: data.category,
              ),
              const SizedBox(height: 30),
              roundedContainerWithDetails(
                text: "Some Details",
                details: "",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Text(
                  data.description,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                color: AppColors.white,
                thickness: 4,
                indent: 35,
                endIndent: 35,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Founder",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  data.userEmail,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget roundedContainerWithDetails(
      {required String text, required String details}) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        const SizedBox(width: 40),
        SizedBox(
          height: 40,
          width: 100,
          child: Text(
            details,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> imageList({required List imgList}) {
    List<Widget> imgWidgetList = [];
    for (var img in imgList) {
      imgWidgetList.add(ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          img,
          width: Get.width * 0.4,
          fit: BoxFit.cover,
        ),
      ));
    }
    return imgWidgetList;
  }
}
