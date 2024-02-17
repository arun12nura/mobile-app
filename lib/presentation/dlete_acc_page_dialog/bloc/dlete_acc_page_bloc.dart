import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/dlete_acc_page_dialog/models/dlete_acc_page_model.dart';
part 'dlete_acc_page_event.dart';
part 'dlete_acc_page_state.dart';

/// A bloc that manages the state of a DleteAccPage according to the event that is dispatched to it.
class DleteAccPageBloc extends Bloc<DleteAccPageEvent, DleteAccPageState> {
  DleteAccPageBloc(DleteAccPageState initialState) : super(initialState) {
    on<DleteAccPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DleteAccPageInitialEvent event,
    Emitter<DleteAccPageState> emit,
  ) async {}
}
