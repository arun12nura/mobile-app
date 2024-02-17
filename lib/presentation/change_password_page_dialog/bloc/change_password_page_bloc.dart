import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/change_password_page_dialog/models/change_password_page_model.dart';
part 'change_password_page_event.dart';
part 'change_password_page_state.dart';

/// A bloc that manages the state of a ChangePasswordPage according to the event that is dispatched to it.
class ChangePasswordPageBloc
    extends Bloc<ChangePasswordPageEvent, ChangePasswordPageState> {
  ChangePasswordPageBloc(ChangePasswordPageState initialState)
      : super(initialState) {
    on<ChangePasswordPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChangePasswordPageInitialEvent event,
    Emitter<ChangePasswordPageState> emit,
  ) async {
    emit(state.copyWith(
        passwordFieldController: TextEditingController(),
        newPasswordFieldController: TextEditingController(),
        retypeNewPasswordFieldController: TextEditingController()));
  }
}
