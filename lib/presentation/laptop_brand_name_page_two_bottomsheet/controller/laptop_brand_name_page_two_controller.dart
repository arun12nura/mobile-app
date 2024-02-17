import 'package:dos/core/app_export.dart';import 'package:dos/presentation/laptop_brand_name_page_two_bottomsheet/models/laptop_brand_name_page_two_model.dart';/// A controller class for the LaptopBrandNamePageTwoBottomsheet.
///
/// This class manages the state of the LaptopBrandNamePageTwoBottomsheet, including the
/// current laptopBrandNamePageTwoModelObj
class LaptopBrandNamePageTwoController extends GetxController {Rx<LaptopBrandNamePageTwoModel> laptopBrandNamePageTwoModelObj = LaptopBrandNamePageTwoModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> warrantyDetails = "".obs;

 }
