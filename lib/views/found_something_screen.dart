import 'package:lost_found_app/constants/app_imports.dart';

class FoundSomethingScreen extends GetWidget<FoundSomethingController> {
  const FoundSomethingScreen({super.key});

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
          vertical: 40,
          horizontal: 5,
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              AppStrings.plsSelectTheItemYouFoundText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.62,
              //width: 165,
              child: GridView.builder(
                itemCount: controller.categoriesData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,

                  mainAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext context, int index) {
                  Categories category = controller.categoriesData[index];
                  return InkWell(
                    onTap: () {
                      Get.toNamed(AppStrings.addFoundItemRout, arguments: category);
                    },
                    child: categoryCard(
                      label: category.label,
                      img: category.img,
                    ),
                  );
                },
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
