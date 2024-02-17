// ignore_for_file: must_be_immutable

part of 'rejected_status_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RejectedStatus widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RejectedStatusEvent extends Equatable {}

/// Event that is dispatched when the RejectedStatus widget is first created.
class RejectedStatusInitialEvent extends RejectedStatusEvent {
  @override
  List<Object?> get props => [];
}
