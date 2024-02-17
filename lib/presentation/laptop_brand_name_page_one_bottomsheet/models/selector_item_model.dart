// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [selector_item_widget] screen.
class SelectorItemModel extends Equatable {
  SelectorItemModel({
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

  SelectorItemModel copyWith({
    String? radioGroup,
    String? radioGroup1,
    String? id,
  }) {
    return SelectorItemModel(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [radioGroup, radioGroup1, id];
}
