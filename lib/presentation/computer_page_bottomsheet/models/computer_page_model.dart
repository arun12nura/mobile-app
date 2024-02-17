// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [computer_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ComputerPageModel extends Equatable {
  ComputerPageModel({this.radioList = const []}) {}

  List<String> radioList;

  ComputerPageModel copyWith({List<String>? radioList}) {
    return ComputerPageModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
