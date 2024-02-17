// ignore_for_file: must_be_immutable

part of 'settings_page_bloc.dart';

/// Represents the state of SettingsPage in the application.
class SettingsPageState extends Equatable {
  SettingsPageState({this.settingsPageModelObj});

  SettingsPageModel? settingsPageModelObj;

  @override
  List<Object?> get props => [
        settingsPageModelObj,
      ];
  SettingsPageState copyWith({SettingsPageModel? settingsPageModelObj}) {
    return SettingsPageState(
      settingsPageModelObj: settingsPageModelObj ?? this.settingsPageModelObj,
    );
  }
}
