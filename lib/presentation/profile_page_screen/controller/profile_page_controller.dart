import 'package:dos/core/app_export.dart';import 'package:dos/presentation/profile_page_screen/models/profile_page_model.dart';/// A controller class for the ProfilePageScreen.
///
/// This class manages the state of the ProfilePageScreen, including the
/// current profilePageModelObj
class ProfilePageController extends GetxController {Rx<ProfilePageModel> profilePageModelObj = ProfilePageModel().obs;

 }
