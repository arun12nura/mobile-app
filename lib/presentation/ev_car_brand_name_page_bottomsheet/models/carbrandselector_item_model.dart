import '../../../core/app_export.dart';/// This class is used in the [carbrandselector_item_widget] screen.
class CarbrandselectorItemModel {CarbrandselectorItemModel({this.radioGroup, this.radioGroup1, this.id, }) { radioGroup = radioGroup  ?? Rx("");radioGroup1 = radioGroup1  ?? Rx("");id = id  ?? Rx(""); }

Rx<String>? radioGroup;

Rx<String>? radioGroup1;

Rx<String>? id;

 }
