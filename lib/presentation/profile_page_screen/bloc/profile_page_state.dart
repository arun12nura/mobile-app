// ignore_for_file: must_be_immutable

part of 'profile_page_bloc.dart';

/// Represents the state of ProfilePage in the application.
class ProfilePageState extends Equatable {
  ProfilePageState({this.profilePageModelObj});

  ProfilePageModel? profilePageModelObj;

  @override
  List<Object?> get props => [
        profilePageModelObj,
      ];
  ProfilePageState copyWith({ProfilePageModel? profilePageModelObj}) {
    return ProfilePageState(
      profilePageModelObj: profilePageModelObj ?? this.profilePageModelObj,
    );
  }
}
