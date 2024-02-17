// ignore_for_file: must_be_immutable

part of 'bike_issue_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BikeIssuePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BikeIssuePageEvent extends Equatable {}

/// Event that is dispatched when the BikeIssuePage widget is first created.
class BikeIssuePageInitialEvent extends BikeIssuePageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends BikeIssuePageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
