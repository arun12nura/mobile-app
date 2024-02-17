// ignore_for_file: must_be_immutable

part of 'change_password_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChangePasswordPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChangePasswordPageEvent extends Equatable {}

/// Event that is dispatched when the ChangePasswordPage widget is first created.
class ChangePasswordPageInitialEvent extends ChangePasswordPageEvent {
  @override
  List<Object?> get props => [];
}
