import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/created_account_screen/models/created_account_model.dart';
part 'created_account_event.dart';
part 'created_account_state.dart';

/// A bloc that manages the state of a CreatedAccount according to the event that is dispatched to it.
class CreatedAccountBloc
    extends Bloc<CreatedAccountEvent, CreatedAccountState> {
  CreatedAccountBloc(CreatedAccountState initialState) : super(initialState) {
    on<CreatedAccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreatedAccountInitialEvent event,
    Emitter<CreatedAccountState> emit,
  ) async {}
}
