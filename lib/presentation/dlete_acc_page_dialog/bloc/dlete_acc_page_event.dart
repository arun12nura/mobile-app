// ignore_for_file: must_be_immutable

part of 'dlete_acc_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DleteAccPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DleteAccPageEvent extends Equatable {}

/// Event that is dispatched when the DleteAccPage widget is first created.
class DleteAccPageInitialEvent extends DleteAccPageEvent {
  @override
  List<Object?> get props => [];
}
