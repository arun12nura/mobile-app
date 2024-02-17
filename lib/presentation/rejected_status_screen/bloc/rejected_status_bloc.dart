import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/rejected_status_screen/models/rejected_status_model.dart';
part 'rejected_status_event.dart';
part 'rejected_status_state.dart';

/// A bloc that manages the state of a RejectedStatus according to the event that is dispatched to it.
class RejectedStatusBloc
    extends Bloc<RejectedStatusEvent, RejectedStatusState> {
  RejectedStatusBloc(RejectedStatusState initialState) : super(initialState) {
    on<RejectedStatusInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RejectedStatusInitialEvent event,
    Emitter<RejectedStatusState> emit,
  ) async {}
}
