// ignore_for_file: must_be_immutable

part of 'edit_profile_page_bloc.dart';

/// Represents the state of EditProfilePage in the application.
class EditProfilePageState extends Equatable {
  EditProfilePageState({
    this.nameEditTextController,
    this.phoneEditTextController,
    this.emailEditTextController,
    this.editProfilePageModelObj,
  });

  TextEditingController? nameEditTextController;

  TextEditingController? phoneEditTextController;

  TextEditingController? emailEditTextController;

  EditProfilePageModel? editProfilePageModelObj;

  @override
  List<Object?> get props => [
        nameEditTextController,
        phoneEditTextController,
        emailEditTextController,
        editProfilePageModelObj,
      ];
  EditProfilePageState copyWith({
    TextEditingController? nameEditTextController,
    TextEditingController? phoneEditTextController,
    TextEditingController? emailEditTextController,
    EditProfilePageModel? editProfilePageModelObj,
  }) {
    return EditProfilePageState(
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      phoneEditTextController:
          phoneEditTextController ?? this.phoneEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      editProfilePageModelObj:
          editProfilePageModelObj ?? this.editProfilePageModelObj,
    );
  }
}
