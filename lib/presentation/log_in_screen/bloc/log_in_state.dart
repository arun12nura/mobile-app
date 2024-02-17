// ignore_for_file: must_be_immutable

part of 'log_in_bloc.dart';

/// Represents the state of LogIn in the application.
class LogInState extends Equatable {
  LogInState({
    this.mobileController,
    this.passwordController,
    this.logInModelObj,
  });

  TextEditingController? mobileController;

  TextEditingController? passwordController;

  LogInModel? logInModelObj;

  @override
  List<Object?> get props => [
        mobileController,
        passwordController,
        logInModelObj,
      ];
  LogInState copyWith({
    TextEditingController? mobileController,
    TextEditingController? passwordController,
    LogInModel? logInModelObj,
  }) {
    return LogInState(
      mobileController: mobileController ?? this.mobileController,
      passwordController: passwordController ?? this.passwordController,
      logInModelObj: logInModelObj ?? this.logInModelObj,
    );
  }
}
