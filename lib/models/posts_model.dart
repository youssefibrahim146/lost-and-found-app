import 'package:lost_found_app/constants/app_imports.dart';

class PostsModel {
  String key;
  String userEmail;
  Timestamp timestamp;
  List<String> imageUrls;
  String category;
  String condition;
  String title;
  String description;
  String founderPhoneNumber;
  String color;

  PostsModel({
    required this.key,
    required this.userEmail,
    required this.timestamp,
    required this.imageUrls,
    required this.category,
    required this.condition,
    required this.title,
    required this.description,
    required this.founderPhoneNumber,
    required this.color,
  });

  factory PostsModel.fromFirestore(DocumentSnapshot document) {
    Map<String, dynamic> data = document.data() as Map<String, dynamic>;

    return PostsModel(
      key: document.id,
      userEmail: data[AppStrings.userEmailField] ?? AppStrings.emptySign,
      timestamp: data[AppStrings.timestampField] ?? Timestamp.now(),
      imageUrls: List<String>.from(data[AppStrings.imageUrlsField] ?? []),
      category: data[AppStrings.categoryField] ?? AppStrings.emptySign,
      condition: data[AppStrings.conditionField] ?? AppStrings.emptySign,
      title: data[AppStrings.titleField] ?? AppStrings.emptySign,
      description: data[AppStrings.descriptionField] ?? AppStrings.emptySign,
      founderPhoneNumber: data[AppStrings.founderPhoneNumberField] ?? AppStrings.emptySign,
      color: data[AppStrings.colorField] ?? AppStrings.emptySign,
    );
  }
}
