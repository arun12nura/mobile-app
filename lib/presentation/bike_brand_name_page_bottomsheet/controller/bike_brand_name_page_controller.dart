import 'package:dos/core/app_export.dart';import 'package:dos/presentation/bike_brand_name_page_bottomsheet/models/bike_brand_name_page_model.dart';/// A controller class for the BikeBrandNamePageBottomsheet.
///
/// This class manages the state of the BikeBrandNamePageBottomsheet, including the
/// current bikeBrandNamePageModelObj
class BikeBrandNamePageController extends GetxController {Rx<BikeBrandNamePageModel> bikeBrandNamePageModelObj = BikeBrandNamePageModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> brandName = "".obs;

 }
