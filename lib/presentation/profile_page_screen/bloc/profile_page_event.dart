// ignore_for_file: must_be_immutable

part of 'profile_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfilePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfilePageEvent extends Equatable {}

/// Event that is dispatched when the ProfilePage widget is first created.
class ProfilePageInitialEvent extends ProfilePageEvent {
  @override
  List<Object?> get props => [];
}
