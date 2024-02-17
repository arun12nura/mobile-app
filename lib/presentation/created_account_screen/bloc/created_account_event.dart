// ignore_for_file: must_be_immutable

part of 'created_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreatedAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreatedAccountEvent extends Equatable {}

/// Event that is dispatched when the CreatedAccount widget is first created.
class CreatedAccountInitialEvent extends CreatedAccountEvent {
  @override
  List<Object?> get props => [];
}
