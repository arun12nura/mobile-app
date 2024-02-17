// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [st_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StPageModel extends Equatable {
  StPageModel() {}

  StPageModel copyWith() {
    return StPageModel();
  }

  @override
  List<Object?> get props => [];
}
