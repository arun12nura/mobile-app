import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/support_page_screen/models/support_page_model.dart';
part 'support_page_event.dart';
part 'support_page_state.dart';

/// A bloc that manages the state of a SupportPage according to the event that is dispatched to it.
class SupportPageBloc extends Bloc<SupportPageEvent, SupportPageState> {
  SupportPageBloc(SupportPageState initialState) : super(initialState) {
    on<SupportPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SupportPageInitialEvent event,
    Emitter<SupportPageState> emit,
  ) async {
    emit(state.copyWith(
        nameEditTextController: TextEditingController(),
        emailEditTextController: TextEditingController(),
        problemValueEditTextController: TextEditingController()));
  }
}
