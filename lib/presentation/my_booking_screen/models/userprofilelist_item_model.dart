import '../../../core/app_export.dart';/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {UserprofilelistItemModel({this.lenovo, this.lenovoImage, this.lenovoText, this.zText, this.ideapadText, this.noWarrantyImage, this.noWarrantyText, this.keyboardImage, this.keyboardText, this.checkmarkImage, this.acceptedText, this.id, }) { lenovo = lenovo  ?? Rx(ImageConstant.imgRectangle33);lenovoImage = lenovoImage  ?? Rx(ImageConstant.imgComputer);lenovoText = lenovoText  ?? Rx("Lenovo");zText = zText  ?? Rx("z");ideapadText = ideapadText  ?? Rx("Ideapad 520");noWarrantyImage = noWarrantyImage  ?? Rx(ImageConstant.imgShield);noWarrantyText = noWarrantyText  ?? Rx("No warranty ");keyboardImage = keyboardImage  ?? Rx(ImageConstant.imgUpload);keyboardText = keyboardText  ?? Rx("Key board not workng");checkmarkImage = checkmarkImage  ?? Rx(ImageConstant.imgCheckmark);acceptedText = acceptedText  ?? Rx("Accepted");id = id  ?? Rx(""); }

Rx<String>? lenovo;

Rx<String>? lenovoImage;

Rx<String>? lenovoText;

Rx<String>? zText;

Rx<String>? ideapadText;

Rx<String>? noWarrantyImage;

Rx<String>? noWarrantyText;

Rx<String>? keyboardImage;

Rx<String>? keyboardText;

Rx<String>? checkmarkImage;

Rx<String>? acceptedText;

Rx<String>? id;

 }
