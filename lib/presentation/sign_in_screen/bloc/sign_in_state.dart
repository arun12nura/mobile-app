// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.userNameController,
    this.passwordController,
    this.signInModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  SignInModel? signInModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        signInModelObj,
      ];
  SignInState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
