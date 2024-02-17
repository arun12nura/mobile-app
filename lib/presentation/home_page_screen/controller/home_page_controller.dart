import 'package:dos/core/app_export.dart';import 'package:dos/presentation/home_page_screen/models/home_page_model.dart';/// A controller class for the HomePageScreen.
///
/// This class manages the state of the HomePageScreen, including the
/// current homePageModelObj
class HomePageController extends GetxController {Rx<HomePageModel> homePageModelObj = HomePageModel().obs;

 }
