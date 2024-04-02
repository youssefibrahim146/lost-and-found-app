import 'package:lost_found_app/constants/app_imports.dart';

class FoundSomethingCategoryScreen extends GetWidget<FoundSomethingController> {
  const FoundSomethingCategoryScreen({super.key});

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
              // const SizedBox(height: 40),
              // const Text(
              //   AppStrings.plsSelectTheItemYouFoundText,
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //     color: AppColors.white,
              //   ),
              // ),
              // const SizedBox(height: 40),
              // SizedBox(
              //   child: GridView.builder(
              //     physics: const NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemCount: controller.categoriesData.length,
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       crossAxisSpacing: 30,
              //       mainAxisSpacing: 20,
              //     ),
              //     itemBuilder: (BuildContext context, int index) {
              //       Categories category = controller.categoriesData[index];
              //       return InkWell(
              //         onTap: () {
              //           Get.toNamed(AppStrings.addFoundItemRout, arguments: category);
              //         },
              //         child: categoryCard(
              //           label: category.label,
              //           img: category.img,
              //         ),
              //       );
              //     },
              //   ),
              // ),
              // const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryCard({required String label, required String img}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
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
              color: Color.fromRGBO(55, 55, 55, 1),
            ),
          ),
        ],
      ),
    );
  }
}
