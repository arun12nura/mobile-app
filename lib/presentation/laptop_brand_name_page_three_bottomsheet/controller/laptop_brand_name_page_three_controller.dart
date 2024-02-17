import 'package:dos/core/app_export.dart';import 'package:dos/presentation/laptop_brand_name_page_three_bottomsheet/models/laptop_brand_name_page_three_model.dart';/// A controller class for the LaptopBrandNamePageThreeBottomsheet.
///
/// This class manages the state of the LaptopBrandNamePageThreeBottomsheet, including the
/// current laptopBrandNamePageThreeModelObj
class LaptopBrandNamePageThreeController extends GetxController {Rx<LaptopBrandNamePageThreeModel> laptopBrandNamePageThreeModelObj = LaptopBrandNamePageThreeModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> warrantyDetails = "".obs;

 }
