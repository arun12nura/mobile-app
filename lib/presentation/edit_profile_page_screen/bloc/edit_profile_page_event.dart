// ignore_for_file: must_be_immutable

part of 'edit_profile_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditProfilePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditProfilePageEvent extends Equatable {}

/// Event that is dispatched when the EditProfilePage widget is first created.
class EditProfilePageInitialEvent extends EditProfilePageEvent {
  @override
  List<Object?> get props => [];
}
