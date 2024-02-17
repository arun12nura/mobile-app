import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.settingsImage,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgRectangle3391x110;
    settingsImage = settingsImage ?? ImageConstant.imgSettings;
    text1 = text1 ?? "z";
    text2 = text2 ?? "Swift ";
    text3 = text3 ?? "Dzire LXi 2019";
    text4 = text4 ?? "Speedometer ";
    id = id ?? "";
  }

  String? userImage;

  String? settingsImage;

  String? text1;

  String? text2;

  String? text3;

  String? text4;

  String? id;
}
