// ignore_for_file: must_be_immutable

part of 'support_page_bloc.dart';

/// Represents the state of SupportPage in the application.
class SupportPageState extends Equatable {
  SupportPageState({
    this.nameEditTextController,
    this.emailEditTextController,
    this.problemValueEditTextController,
    this.supportPageModelObj,
  });

  TextEditingController? nameEditTextController;

  TextEditingController? emailEditTextController;

  TextEditingController? problemValueEditTextController;

  SupportPageModel? supportPageModelObj;

  @override
  List<Object?> get props => [
        nameEditTextController,
        emailEditTextController,
        problemValueEditTextController,
        supportPageModelObj,
      ];
  SupportPageState copyWith({
    TextEditingController? nameEditTextController,
    TextEditingController? emailEditTextController,
    TextEditingController? problemValueEditTextController,
    SupportPageModel? supportPageModelObj,
  }) {
    return SupportPageState(
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      problemValueEditTextController:
          problemValueEditTextController ?? this.problemValueEditTextController,
      supportPageModelObj: supportPageModelObj ?? this.supportPageModelObj,
    );
  }
}
