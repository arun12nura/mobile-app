import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/accepted_status_screen/models/accepted_status_model.dart';
part 'accepted_status_event.dart';
part 'accepted_status_state.dart';

/// A bloc that manages the state of a AcceptedStatus according to the event that is dispatched to it.
class AcceptedStatusBloc
    extends Bloc<AcceptedStatusEvent, AcceptedStatusState> {
  AcceptedStatusBloc(AcceptedStatusState initialState) : super(initialState) {
    on<AcceptedStatusInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AcceptedStatusInitialEvent event,
    Emitter<AcceptedStatusState> emit,
  ) async {}
}
