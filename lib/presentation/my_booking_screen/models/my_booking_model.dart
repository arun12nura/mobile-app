import '../../../core/app_export.dart';import 'userprofilelist_item_model.dart';/// This class defines the variables used in the [my_booking_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyBookingModel {Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([UserprofilelistItemModel(lenovo:ImageConstant.imgRectangle33.obs,lenovoImage:ImageConstant.imgComputer.obs,lenovoText: "Lenovo".obs,zText: "z".obs,ideapadText: "Ideapad 520".obs,noWarrantyImage:ImageConstant.imgShield.obs,noWarrantyText: "No warranty ".obs,keyboardImage:ImageConstant.imgUpload.obs,keyboardText: "Key board not workng".obs,checkmarkImage:ImageConstant.imgCheckmark.obs,acceptedText: "Accepted".obs),UserprofilelistItemModel(lenovo:ImageConstant.imgRectangle3391x110.obs),UserprofilelistItemModel(lenovo:ImageConstant.imgRectangle331.obs)]);

 }
