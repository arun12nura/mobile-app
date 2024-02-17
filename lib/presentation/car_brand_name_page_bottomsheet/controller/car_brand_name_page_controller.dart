import 'package:dos/core/app_export.dart';import 'package:dos/presentation/car_brand_name_page_bottomsheet/models/car_brand_name_page_model.dart';/// A controller class for the CarBrandNamePageBottomsheet.
///
/// This class manages the state of the CarBrandNamePageBottomsheet, including the
/// current carBrandNamePageModelObj
class CarBrandNamePageController extends GetxController {Rx<CarBrandNamePageModel> carBrandNamePageModelObj = CarBrandNamePageModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

 }
