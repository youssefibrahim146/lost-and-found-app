import 'package:lost_found_app/constants/app_imports.dart';

class SearchResultScreen extends GetWidget<SearchedController> {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 28,
        ),
        elevation: 0,
        backgroundColor: AppColors.white,
        title: const Text(
          AppStrings.searchResultText,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(55, 55, 55, 0.6),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            StreamBuilder(
              stream: controller.fetchPostsBasedOnUserSearchInStream(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: CircularProgressIndicator(
                        color: AppColors.white,
                      ),
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Icon(Icons.error),
                  );
                } else {
                  List<PostsModel> posts = snapshot.data ?? [];
                  if (posts.isNotEmpty) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: posts.length >= 20 ? 20 : posts.length,
                      itemBuilder: (itemBuilder, index) {
                        PostsModel post = posts[index];
                        return InkWell(
                          onTap: () => controller.searchedItemOnClick(post),
                          child: InkWell(
                            onTap: () => Get.toNamed(AppStrings.itemDetailsRout, arguments: post.title),
                            child: Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    child: Image.network(
                                      post.imageUrls.first,
                                      width: 100,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 9),
                                          child: Text(
                                            post.title,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        Text(
                                          "Founder",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.grey,
                                          ),
                                        ),
                                        const SizedBox(height: 2),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 9),
                                          child: Text(
                                            post.userEmail,
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // child: MyPostItemWidget(homeController, post),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: Text(
                        AppStrings.noFoundItemForYourSearchText,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 24,
                        ),
                      ),
                    );
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
