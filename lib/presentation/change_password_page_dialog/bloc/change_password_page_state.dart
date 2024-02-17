// ignore_for_file: must_be_immutable

part of 'change_password_page_bloc.dart';

/// Represents the state of ChangePasswordPage in the application.
class ChangePasswordPageState extends Equatable {
  ChangePasswordPageState({
    this.passwordFieldController,
    this.newPasswordFieldController,
    this.retypeNewPasswordFieldController,
    this.changePasswordPageModelObj,
  });

  TextEditingController? passwordFieldController;

  TextEditingController? newPasswordFieldController;

  TextEditingController? retypeNewPasswordFieldController;

  ChangePasswordPageModel? changePasswordPageModelObj;

  @override
  List<Object?> get props => [
        passwordFieldController,
        newPasswordFieldController,
        retypeNewPasswordFieldController,
        changePasswordPageModelObj,
      ];
  ChangePasswordPageState copyWith({
    TextEditingController? passwordFieldController,
    TextEditingController? newPasswordFieldController,
    TextEditingController? retypeNewPasswordFieldController,
    ChangePasswordPageModel? changePasswordPageModelObj,
  }) {
    return ChangePasswordPageState(
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      newPasswordFieldController:
          newPasswordFieldController ?? this.newPasswordFieldController,
      retypeNewPasswordFieldController: retypeNewPasswordFieldController ??
          this.retypeNewPasswordFieldController,
      changePasswordPageModelObj:
          changePasswordPageModelObj ?? this.changePasswordPageModelObj,
    );
  }
}
