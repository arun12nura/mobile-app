import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/computer_requested_page_screen/models/computer_requested_page_model.dart';
part 'computer_requested_page_event.dart';
part 'computer_requested_page_state.dart';

/// A bloc that manages the state of a ComputerRequestedPage according to the event that is dispatched to it.
class ComputerRequestedPageBloc
    extends Bloc<ComputerRequestedPageEvent, ComputerRequestedPageState> {
  ComputerRequestedPageBloc(ComputerRequestedPageState initialState)
      : super(initialState) {
    on<ComputerRequestedPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ComputerRequestedPageInitialEvent event,
    Emitter<ComputerRequestedPageState> emit,
  ) async {}
}
