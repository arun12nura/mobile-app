import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.userImage, this.settingsImage, this.text1, this.text2, this.text3, this.text4, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgRectangle3391x110);settingsImage = settingsImage  ?? Rx(ImageConstant.imgSettings);text1 = text1  ?? Rx("z");text2 = text2  ?? Rx("Swift ");text3 = text3  ?? Rx("Dzire LXi 2019");text4 = text4  ?? Rx("Speedometer ");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? settingsImage;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? text3;

Rx<String>? text4;

Rx<String>? id;

 }
