// ignore_for_file: must_be_immutable

part of 'computer_requested_page_bloc.dart';

/// Represents the state of ComputerRequestedPage in the application.
class ComputerRequestedPageState extends Equatable {
  ComputerRequestedPageState({this.computerRequestedPageModelObj});

  ComputerRequestedPageModel? computerRequestedPageModelObj;

  @override
  List<Object?> get props => [
        computerRequestedPageModelObj,
      ];
  ComputerRequestedPageState copyWith(
      {ComputerRequestedPageModel? computerRequestedPageModelObj}) {
    return ComputerRequestedPageState(
      computerRequestedPageModelObj:
          computerRequestedPageModelObj ?? this.computerRequestedPageModelObj,
    );
  }
}
