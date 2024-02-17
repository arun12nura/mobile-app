// ignore_for_file: must_be_immutable

part of 'st_page_bloc.dart';

/// Represents the state of StPage in the application.
class StPageState extends Equatable {
  StPageState({this.stPageModelObj});

  StPageModel? stPageModelObj;

  @override
  List<Object?> get props => [
        stPageModelObj,
      ];
  StPageState copyWith({StPageModel? stPageModelObj}) {
    return StPageState(
      stPageModelObj: stPageModelObj ?? this.stPageModelObj,
    );
  }
}
