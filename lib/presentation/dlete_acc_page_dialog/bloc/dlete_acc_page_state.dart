// ignore_for_file: must_be_immutable

part of 'dlete_acc_page_bloc.dart';

/// Represents the state of DleteAccPage in the application.
class DleteAccPageState extends Equatable {
  DleteAccPageState({this.dleteAccPageModelObj});

  DleteAccPageModel? dleteAccPageModelObj;

  @override
  List<Object?> get props => [
        dleteAccPageModelObj,
      ];
  DleteAccPageState copyWith({DleteAccPageModel? dleteAccPageModelObj}) {
    return DleteAccPageState(
      dleteAccPageModelObj: dleteAccPageModelObj ?? this.dleteAccPageModelObj,
    );
  }
}
