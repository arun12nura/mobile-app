import '../../../core/app_export.dart';import 'userprofile_item_model.dart';/// This class defines the variables used in the [previous_bookings_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PreviousBookingsModel {Rx<List<UserprofileItemModel>> userprofileItemList = Rx([UserprofileItemModel(userImage:ImageConstant.imgRectangle3391x110.obs,settingsImage:ImageConstant.imgSettings.obs,text1: "z".obs,text2: "Swift ".obs,text3: "Dzire LXi 2019".obs,text4: "Speedometer ".obs),UserprofileItemModel(userImage:ImageConstant.imgRectangle331.obs,settingsImage:ImageConstant.imgSettingsBlack90001.obs,text1: "z".obs,text2: "Royal enfield".obs,text3: "Classic 350".obs,text4: "Starting Trouble ".obs)]);

 }
