import 'package:carousel_slider/carousel_slider.dart';
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
          data[0],
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(55, 55, 55, 0.6),
          ),
        ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://www.trustedreviews.com/wp-content/uploads/sites/54/2023/10/X1007152-scaled.jpeg",
                    width: Get.width * 0.4,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://i.blogs.es/718a10/img_2085/500_333.jpeg",
                    width: Get.width * 0.4,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://media.wired.com/photos/6500ad57fe61eb702d721b58/1:1/w_1800,h_1800,c_limit/Apple-iPhone-15-Pro-Hero-Gear.jpg",
                    width: Get.width * 0.4,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
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
            roundedContainer(text: "Color"),
            const SizedBox(height: 30),
            roundedContainer(text: "Some Details"),
          ],
        ),
      ),
    );
  }
  Widget roundedContainer({required String text}) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
    );
  }
}
