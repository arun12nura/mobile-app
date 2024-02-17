// ignore_for_file: must_be_immutable

part of 'ev_bike_issue_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EvBikeIssuePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EvBikeIssuePageEvent extends Equatable {}

/// Event that is dispatched when the EvBikeIssuePage widget is first created.
class EvBikeIssuePageInitialEvent extends EvBikeIssuePageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends EvBikeIssuePageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
