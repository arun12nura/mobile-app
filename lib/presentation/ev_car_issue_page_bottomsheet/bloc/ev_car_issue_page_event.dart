// ignore_for_file: must_be_immutable

part of 'ev_car_issue_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EvCarIssuePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EvCarIssuePageEvent extends Equatable {}

/// Event that is dispatched when the EvCarIssuePage widget is first created.
class EvCarIssuePageInitialEvent extends EvCarIssuePageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends EvCarIssuePageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
