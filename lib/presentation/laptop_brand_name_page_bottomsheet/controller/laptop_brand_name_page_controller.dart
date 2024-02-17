import 'package:dos/core/app_export.dart';import 'package:dos/presentation/laptop_brand_name_page_bottomsheet/models/laptop_brand_name_page_model.dart';/// A controller class for the LaptopBrandNamePageBottomsheet.
///
/// This class manages the state of the LaptopBrandNamePageBottomsheet, including the
/// current laptopBrandNamePageModelObj
class LaptopBrandNamePageController extends GetxController {Rx<LaptopBrandNamePageModel> laptopBrandNamePageModelObj = LaptopBrandNamePageModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> brandName = "".obs;

 }
