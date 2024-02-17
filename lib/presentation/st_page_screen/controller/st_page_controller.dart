import 'package:dos/core/app_export.dart';import 'package:dos/presentation/st_page_screen/models/st_page_model.dart';/// A controller class for the StPageScreen.
///
/// This class manages the state of the StPageScreen, including the
/// current stPageModelObj
class StPageController extends GetxController {Rx<StPageModel> stPageModelObj = StPageModel().obs;

@override void onReady() { Future.delayed(const Duration(milliseconds: 3000), (){
Get.offNamed(AppRoutes.logInScreen,);}); } 
 }
