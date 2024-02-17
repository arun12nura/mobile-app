// ignore_for_file: must_be_immutable

part of 'laptop_requested_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LaptopRequestedPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LaptopRequestedPageEvent extends Equatable {}

/// Event that is dispatched when the LaptopRequestedPage widget is first created.
class LaptopRequestedPageInitialEvent extends LaptopRequestedPageEvent {
  @override
  List<Object?> get props => [];
}
