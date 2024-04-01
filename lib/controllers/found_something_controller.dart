import 'dart:io';

import 'package:lost_found_app/constants/app_imports.dart';

class FoundSomethingController extends GetxController {
  // List<Categories> categoriesData = [
  //   Categories(img: "assets/icons/phone.png", label: "Phone"),
  //   Categories(img: "assets/icons/key.png", label: "Key"),
  //   Categories(img: "assets/icons/ring.png", label: "Ring"),
  //   Categories(img: "assets/icons/wallet.png", label: "Wallet"),
  //   Categories(img: "assets/icons/bag.png", label: "Bag"),
  //   Categories(img: "assets/icons/glasses.png", label: "Glasses"),
  //   Categories(img: "assets/icons/laptop.png", label: "Laptop"),
  //   Categories(img: "assets/icons/watch.png", label: "Watch"),
  //   Categories(img: "assets/icons/other.png", label: "Other"),
  // ];

  static FirebaseStorage storage = FirebaseStorage.instance;
  static const Duration timeoutDuration = Duration(seconds: 15);
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  static CollectionReference postsCollection = firestore.collection(AppStrings.postsCollection);
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  RxList<File> images = RxList();
  RxBool newSelected = RxBool(false);
  RxBool usedSelected = RxBool(false);
  RxBool isDown = RxBool(false);
  final RxString categoryBHint = AppStrings.emptySign.obs;
  final RxString title = AppStrings.emptySign.obs;
  final RxString description = AppStrings.emptySign.obs;
  final RxString condition = AppStrings.emptySign.obs;
  final RxBool isLoading = RxBool(false);

  List<String> categoriesList = [
    AppStrings.phoneText,
    AppStrings.keyText,
    AppStrings.ringText,
    AppStrings.walletText,
    AppStrings.bagText,
    AppStrings.glassesText,
    AppStrings.laptopText,
    AppStrings.watchText,
    AppStrings.otherText,
  ];

  Future<void> pickImages() async {
    final picker = ImagePicker();
    final pickedFiles = await picker.pickMultiImage();

    if (pickedFiles != null) {
      images.value = pickedFiles
          .map(
            (pickedFile) => File(pickedFile.path),
          )
          .toList();
    }
  }

  void imageOnLongPressed(index) {
    images.removeAt(index);
  }

  void newButtonOnClick() {
    usedSelected.value = false;
    newSelected.value = true;
    condition.value = AppStrings.newText;
  }

  void usedButtonOnClick() {
    usedSelected.value = true;
    newSelected.value = false;
    condition.value = AppStrings.usedText;
  }

  uploadOnClick() async {
    FocusManager.instance.primaryFocus?.unfocus();
    var myFormsState = formState.currentState;
    if (myFormsState!.validate()) {
      myFormsState.save();
      isLoading.value = true;
      if (images.length > 0) {
        if (categoryBHint.value != AppStrings.emptySign) {
          if (condition.value != AppStrings.emptySign) {
            uploadPost(
              category: categoryBHint.value,
              condition: condition.value,
              description: description,
              images: images,
              title: title,
            ).then(
              (value) {
                isLoading.value = false;
                images.value = RxList();
                categoryBHint.value = AppStrings.emptySign;
                condition.value = AppStrings.emptySign;
                newSelected.value = false;
                usedSelected.value = false;
                title.value = AppStrings.emptySign;
                description.value = AppStrings.emptySign;
                formState.currentState!.reset();
              },
            );
          } else {
            isLoading.value = false;
            AppDefaults.defaultToast(AppStrings.selectConditionToast);
          }
        } else {
          isLoading.value = false;
          AppDefaults.defaultToast(AppStrings.selectCategoryToast);
        }
      } else {
        isLoading.value = false;
        AppDefaults.defaultToast(AppStrings.uploadImageToast);
      }
    }
  }

  static Future<void> uploadPost({images, category, condition, title, description}) async {
    DocumentReference documentReference = postsCollection.doc();
    List<String> imageUrls = [];
    Random random = Random();

    try {
      /// Upload the image files from the user's phone system.
      for (var image in images) {
        String imageName = DateTime.now().millisecondsSinceEpoch.toString() + AppStrings.underscoreSign + random.nextInt(99999).toString();
        Reference storageReference = await storage.ref().child(AppStrings.postsImagesBase + FirebaseAuth.instance.currentUser!.email! + AppStrings.backSlashSign + imageName + AppStrings.imagesExtensionText);
        UploadTask uploadTask = storageReference.putFile(image, SettableMetadata(contentType: AppStrings.imagesTypeBase));
        await uploadTask.timeout(timeoutDuration);
        TaskSnapshot storageTaskSnapshot = await uploadTask.whenComplete(() => null);
        String imageUrl = await storageTaskSnapshot.ref.getDownloadURL();
        imageUrls.add(imageUrl);
      }

      /// Upload the post data.
      await documentReference.set(
        {
          AppStrings.timestampField: FieldValue.serverTimestamp(),
          AppStrings.imageUrlsField: imageUrls,
          AppStrings.categoryField: category.toString(),
          AppStrings.conditionField: condition.toString(),
          AppStrings.titleField: title.toString(),
          AppStrings.descriptionField: description.toString(),
        },
      );

      AppDefaults.defaultToast(AppStrings.uploadedSuccessfullyToast);
    } catch (e) {
      AppDefaults.defaultToast(AppStrings.errorUploadingToast + e.toString());
    }
  }
}
