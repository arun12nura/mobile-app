import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/edit_profile_page_screen/models/edit_profile_page_model.dart';
part 'edit_profile_page_event.dart';
part 'edit_profile_page_state.dart';

/// A bloc that manages the state of a EditProfilePage according to the event that is dispatched to it.
class EditProfilePageBloc
    extends Bloc<EditProfilePageEvent, EditProfilePageState> {
  EditProfilePageBloc(EditProfilePageState initialState) : super(initialState) {
    on<EditProfilePageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditProfilePageInitialEvent event,
    Emitter<EditProfilePageState> emit,
  ) async {
    emit(state.copyWith(
        nameEditTextController: TextEditingController(),
        phoneEditTextController: TextEditingController(),
        emailEditTextController: TextEditingController()));
  }
}
