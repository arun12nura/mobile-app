import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/ev_car_requested_page_screen/models/ev_car_requested_page_model.dart';
part 'ev_car_requested_page_event.dart';
part 'ev_car_requested_page_state.dart';

/// A bloc that manages the state of a EvCarRequestedPage according to the event that is dispatched to it.
class EvCarRequestedPageBloc
    extends Bloc<EvCarRequestedPageEvent, EvCarRequestedPageState> {
  EvCarRequestedPageBloc(EvCarRequestedPageState initialState)
      : super(initialState) {
    on<EvCarRequestedPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EvCarRequestedPageInitialEvent event,
    Emitter<EvCarRequestedPageState> emit,
  ) async {}
}
