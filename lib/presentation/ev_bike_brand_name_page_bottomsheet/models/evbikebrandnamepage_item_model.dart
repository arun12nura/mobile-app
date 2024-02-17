// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [evbikebrandnamepage_item_widget] screen.
class EvbikebrandnamepageItemModel extends Equatable {
  EvbikebrandnamepageItemModel({
    this.radioGroup,
    this.radioGroup1,
    this.id,
  }) {
    radioGroup = radioGroup ?? "";
    radioGroup1 = radioGroup1 ?? "";
    id = id ?? "";
  }

  String? radioGroup;

  String? radioGroup1;

  String? id;

  EvbikebrandnamepageItemModel copyWith({
    String? radioGroup,
    String? radioGroup1,
    String? id,
  }) {
    return EvbikebrandnamepageItemModel(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [radioGroup, radioGroup1, id];
}
