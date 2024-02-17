import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.lenovo,
    this.lenovoImage,
    this.lenovoText,
    this.zText,
    this.ideapadText,
    this.noWarrantyImage,
    this.noWarrantyText,
    this.keyboardImage,
    this.keyboardText,
    this.checkmarkImage,
    this.acceptedText,
    this.id,
  }) {
    lenovo = lenovo ?? ImageConstant.imgRectangle33;
    lenovoImage = lenovoImage ?? ImageConstant.imgComputer;
    lenovoText = lenovoText ?? "Lenovo";
    zText = zText ?? "z";
    ideapadText = ideapadText ?? "Ideapad 520";
    noWarrantyImage = noWarrantyImage ?? ImageConstant.imgShield;
    noWarrantyText = noWarrantyText ?? "No warranty ";
    keyboardImage = keyboardImage ?? ImageConstant.imgUpload;
    keyboardText = keyboardText ?? "Key board not workng";
    checkmarkImage = checkmarkImage ?? ImageConstant.imgCheckmark;
    acceptedText = acceptedText ?? "Accepted";
    id = id ?? "";
  }

  String? lenovo;

  String? lenovoImage;

  String? lenovoText;

  String? zText;

  String? ideapadText;

  String? noWarrantyImage;

  String? noWarrantyText;

  String? keyboardImage;

  String? keyboardText;

  String? checkmarkImage;

  String? acceptedText;

  String? id;
}
