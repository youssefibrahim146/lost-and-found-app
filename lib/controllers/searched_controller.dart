import 'package:lost_found_app/constants/app_imports.dart';

class SearchedController extends GetxController {
  String searchFromArgs = Get.arguments[0];
  String categoryFromArgs = Get.arguments[1];
  String conditionFromArgs = Get.arguments[2];
  static FirebaseStorage storage = FirebaseStorage.instance;
  static const Duration timeoutDuration = Duration(seconds: 15);
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  static CollectionReference postsCollection = firestore.collection(AppStrings.postsCollection);

  Stream<List<PostsModel>> fetchPostsBasedOnUserSearchInStream() {
    try {
      return postsCollection.orderBy(AppStrings.timestampField, descending: true).snapshots().map(
        (QuerySnapshot querySnapshot) {
          List<PostsModel> allPosts = querySnapshot.docs.map(
            (DocumentSnapshot document) {
              return PostsModel.fromFirestore(document);
            },
          ).toList();
          List<PostsModel> searchedPosts = allPosts.where((post) => post.title.toLowerCase().contains(searchFromArgs.toLowerCase()) && post.category.toLowerCase().contains(categoryFromArgs.toLowerCase()) && post.condition.toLowerCase().contains(conditionFromArgs.toLowerCase())).toList();
          return searchedPosts;
        },
      );
    } catch (e) {
      AppDefaults.defaultToast(AppStrings.errorFetchingToast + e.toString());
      return Stream.value([]);
    }
  }

  void searchedItemOnClick(PostsModel post) {
    Get.toNamed(
      AppStrings.itemDetailsRout,
      arguments: post,
    );
  }
}
