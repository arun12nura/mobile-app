// ignore_for_file: must_be_immutable

part of 'car_issue_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CarIssuePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CarIssuePageEvent extends Equatable {}

/// Event that is dispatched when the CarIssuePage widget is first created.
class CarIssuePageInitialEvent extends CarIssuePageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends CarIssuePageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends CarIssuePageEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
