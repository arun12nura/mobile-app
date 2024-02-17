// ignore_for_file: must_be_immutable

part of 'laptop_issue_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LaptopIssuePageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LaptopIssuePageOneEvent extends Equatable {}

/// Event that is dispatched when the LaptopIssuePageOne widget is first created.
class LaptopIssuePageOneInitialEvent extends LaptopIssuePageOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends LaptopIssuePageOneEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
