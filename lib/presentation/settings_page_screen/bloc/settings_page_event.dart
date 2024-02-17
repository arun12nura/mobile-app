// ignore_for_file: must_be_immutable

part of 'settings_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingsPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingsPageEvent extends Equatable {}

/// Event that is dispatched when the SettingsPage widget is first created.
class SettingsPageInitialEvent extends SettingsPageEvent {
  @override
  List<Object?> get props => [];
}
