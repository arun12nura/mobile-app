// ignore_for_file: must_be_immutable

part of 'created_account_bloc.dart';

/// Represents the state of CreatedAccount in the application.
class CreatedAccountState extends Equatable {
  CreatedAccountState({this.createdAccountModelObj});

  CreatedAccountModel? createdAccountModelObj;

  @override
  List<Object?> get props => [
        createdAccountModelObj,
      ];
  CreatedAccountState copyWith({CreatedAccountModel? createdAccountModelObj}) {
    return CreatedAccountState(
      createdAccountModelObj:
          createdAccountModelObj ?? this.createdAccountModelObj,
    );
  }
}
