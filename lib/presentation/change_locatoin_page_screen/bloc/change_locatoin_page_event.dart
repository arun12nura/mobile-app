// ignore_for_file: must_be_immutable

part of 'change_locatoin_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChangeLocatoinPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChangeLocatoinPageEvent extends Equatable {}

/// Event that is dispatched when the ChangeLocatoinPage widget is first created.
class ChangeLocatoinPageInitialEvent extends ChangeLocatoinPageEvent {
  @override
  List<Object?> get props => [];
}
