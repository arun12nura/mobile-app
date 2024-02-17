// ignore_for_file: must_be_immutable

part of 'accepted_status_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AcceptedStatus widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AcceptedStatusEvent extends Equatable {}

/// Event that is dispatched when the AcceptedStatus widget is first created.
class AcceptedStatusInitialEvent extends AcceptedStatusEvent {
  @override
  List<Object?> get props => [];
}
