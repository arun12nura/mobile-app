// ignore_for_file: must_be_immutable

part of 'referal_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReferalPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReferalPageEvent extends Equatable {}

/// Event that is dispatched when the ReferalPage widget is first created.
class ReferalPageInitialEvent extends ReferalPageEvent {
  @override
  List<Object?> get props => [];
}
