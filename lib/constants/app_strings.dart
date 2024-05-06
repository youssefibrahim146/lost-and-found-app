class AppStrings {
  /// App
  static const String appTitle = "Lost And Found";

  /// Routs
  static const String foundSomethingCategoryRout = "/foundSomethingCategory";
  static const String forgotPasswordRout = "/forgotPassword";
  static const String foundSomethingRout = "/foundSomething";
  static const String lostSomethingRout = "/lostSomething";
  static const String foundBySearchRout = "/foundBySearch";
  static const String addFoundItemRout = "/faddFoundItem";
  static const String foundByOtherRout = "/foundByOther";
  static const String searchResultRout = "/searchResult";
  static const String itemDetailsRout = "/itemDetails";
  static const String signUpRout = "/signUp";
  static const String loginRout = "/login";
  static const String homeRout = "/home";

  /// Assets
  static const String lostAndFoundAsset = "assets/lost and found icon.png";
  static const String glassesAsset = "assets/icons/glasses.png";
  static const String profileAsset = "assets/profile icon.png";
  static const String signupAsset = "assets/signup image.png";
  static const String laptopAsset = "assets/icons/laptop.png";
  static const String walletAsset = "assets/icons/wallet.png";
  static const String loginAsset = "assets/login image.png";
  static const String phoneAsset = "assets/icons/phone.png";
  static const String watchAsset = "assets/icons/watch.png";
  static const String otherAsset = "assets/icons/other.png";
  static const String sadFaceAsset = "assets/sad face.png";
  static const String ringAsset = "assets/icons/ring.png";
  static const String keyAsset = "assets/icons/key.png";
  static const String bagAsset = "assets/icons/bag.png";

  /// Extension
  static const String imagesExtensionText = ".jpg";

  /// Collection, Documents, Fields Name
  static const String founderPhoneNumberField = "founderPhoneNumber";
  static const String descriptionField = "description";
  static const String authUsersDocument = "authUsers";
  static const String timestampField = "timestamp";
  static const String userPhoneField = "userPhone";
  static const String userEmailField = "userEmail";
  static const String imageUrlsField = "imageUrls";
  static const String conditionField = "condition";
  static const String userNameField = "userName";
  static const String categoryField = "category";

  static const String postsCollection = "posts";
  static const String usersCollection = "users";
  static const String emailsField = "emails";
  static const String titleField = "title";
  static const String emailField = "email";
  static const String colorField = "color";
  static const String nameField = "name";

  /// validations
  static const String phoneNumberBadlyFormattedValidate = "Phone Number is badly formatted";
  static const String badlyFormattedPhoneNumberValidate = "Phone Number is badly formatted";
  static const String phoneNumberEmptyValidate = "Phone Number can't be empty";
  static const String invalidPhoneNumberValidate = "Invalid Phone Number";
  static const String colorEmptyValidate = "Color can't be empty";
  static const String userNotFoundCode = "user-not-found";
  static const String userNotFoundToast = "Email in not exist in our database";
  static const String wrongPasswordCode = "wrong-password";
  static const String wrongPasswordToast = "Wrong Password";
  static const String tooManyRequestsCode = "too-many-requests";
  static const String tooManyRequestsToast = "Too many requests, please try again later";
  static const String userDisabledCode = "user-disabled";
  static const String userDisabledToast = "User is disabled";
  static const String emailAlreadyInUseCode = "email-already-in-use";
  static const String emailAlreadyInUseToast = "Email is already in use";
  static const String weakPasswordCode = "weak-password";
  static const String weakPasswordToast = "Password is too weak";
  static const String invalidEmailCode = "invalid-email";
  static const String invalidEmailToast = "Invalid Email";
  static const String operationNotAllowedCode = "operation-not-allowed";
  static const String operationNotAllowedToast = "Operation is not allowed";
  static const String emailNotVerifiedCode = "email-not-verified";
  static const String emailNotVerifiedToast = "Email is not verified";

  /// Toasts
  static const String emailSentSuccessfullyToast = "Email sent successfully, please check your email to reset your password.";
  static const String yourEmailNotInOurDatabaseToast = "Your email is not in our database, Try to signup with that email.";
  static const String accountDeletedSuccessfullyToast = "Account deleted successfully.";
  static const String connectionErrorToast = "Please check your internet connection.";
  static const String selectConditionToast = "Please select condition for this item.";
  static const String selectCategoryToast = "Please select category for this item.";
  static const String verifyEmailFirstToast = "Please verify your email first.";
  static const String uploadImageToast = "Please upload images for this item.";
  static const String uploadedSuccessfullyToast = "Uploaded Successfully.";
  static const String errorFetchingToast = "Error fetching: ";
  static const String errorUploadingToast = "Error uploading: ";

  /// Validations
  static const String passwordLargerThen24Validate = "Password can't be larger then 24 letters";
  static const String nameLargerThen24Validate = "User name can't be larger then 24 letters";
  static const String passwordLessThen8Validate = "Password can't be less then 8 letters";
  static const String nameLessThen4Validate = "User name can't be less then 4 letters";
  static const String descriptionEmptyValidate = "Description can't be empty";
  static const String emailEmptyValidate = "Email address can't be empty";
  static const String emailMessingAtSignValidate = "Email is messing '@'";
  static const String userNameEmptyValidate = "User Name can't be empty";
  static const String passwordEmptyValidate = "Password can't be empty";
  static const String priceEmptyValidate = "Price can't be empty";
  static const String titleEmptyValidate = "Title can't be empty";

  /// Base URLs
  static const String postsImagesBase = "postsImages/";
  static const String imagesTypeBase = "image/jpg";

  /// Signs
  static const String closingSquareBracketSign = "]";
  static const String openingSquareBracketSign = "[";
  static const String closingCurlyBraceSign = "}";
  static const String openingCurlyBraceSign = "{";
  static const String closeParenthesisSign = ")";
  static const String openParenthesisSign = "(";
  static const String ellipsisSign = ".....";
  static const String commaSpaceSign = ", ";
  static const String percentageSign = "%";
  static const String underscoreSign = "_";
  static const String twoSpacesSign = "  ";
  static const String backSlashSign = "/";
  static const String emoticonSign = ":-";
  static const String plusTwoSign = "+2";
  static const String asteriskSign = "*";
  static const String questionSign = "?";
  static const String newLineSign = "\n";
  static const String periodSign = ".";
  static const String hyphenSign = "-";
  static const String commaSign = ",";
  static const String caretSign = "^";
  static const String colonSign = ":";
  static const String spaceSign = " ";
  static const String emptySign = "";
  static const String plusSign = "+";
  static const String bangSign = "!";
  static const String hashSign = "#";
  static const String andSign = "&";
  static const String atSign = "@";
  static const String orSign = "|";

  /// Else
  static const String forgotPasswordSubTitleText = "Enter the email address that associated with your account";
  static const String selectTheDataForYourItemText = "Select the data of your lost item";
  static const String plsSelectTheItemYouFoundText = "Please select the item you Found";
  static const String noFoundItemForYourSearchText = "No Found items for that search";
  static const String helpToFindYourLostItemText = "Help Us to find your lost item";
  static const String searchForYourItemText = "please search for your lost item";
  static const String foundSomethingSmText = "Found Something";
  static const String foundSomethingCaText = "FOUND SOMETHING";
  static const String lostSomethingCaText = "LOST SOMETHING";
  static const String lostSomethingSmText = "Lost Something";
  static const String forgotPasswordText = "Forget Password";
  static const String selectCategoryText = "Select Category";
  static const String foundYourItemText = "Found your item";
  static const String searchResultText = "Search Result";
  static const String alreadyUserText = "Already a User";
  static const String searchHereText = "Search here...";
  static const String phoneNumberText = "Phone Number";
  static const String descriptionText = "Description";
  static const String conditionText = "Condition";
  static const String itemNameText = "Item Name";
  static const String notUserText = "Not a User";
  static const String userNameText = "User Name";
  static const String categoryText = "Category";
  static const String passwordText = "Password";
  static const String notSureText = "Not Sure";
  static const String glassesText = "Glasses";
  static const String signInText = "Sign in";
  static const String signupText = "Signup";
  static const String laptopText = "Laptop";
  static const String walletText = "Wallet";
  static const String searchText = "Search";
  static const String uploadText = "Upload";
  static const String imagesText = "Images";
  static const String colorText = "Color";
  static const String logoutText = "Logout";
  static const String priceText = "Price";
  static const String loginText = "Login";
  static const String emailText = "Email";
  static const String watchText = "Watch";
  static const String phoneText = "Phone";
  static const String otherText = "Other";
  static const String titleText = "Title";
  static const String infoText = "Info";
  static const String ringText = "Ring";
  static const String usedText = "Used";
  static const String sendText = "Send";
  static const String telText = "tel: ";
  static const String newText = "New";
  static const String keyText = "Key";
  static const String bagText = "Bag";
}
