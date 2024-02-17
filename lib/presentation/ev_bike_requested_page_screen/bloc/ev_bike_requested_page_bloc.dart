import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/ev_bike_requested_page_screen/models/ev_bike_requested_page_model.dart';
part 'ev_bike_requested_page_event.dart';
part 'ev_bike_requested_page_state.dart';

/// A bloc that manages the state of a EvBikeRequestedPage according to the event that is dispatched to it.
class EvBikeRequestedPageBloc
    extends Bloc<EvBikeRequestedPageEvent, EvBikeRequestedPageState> {
  EvBikeRequestedPageBloc(EvBikeRequestedPageState initialState)
      : super(initialState) {
    on<EvBikeRequestedPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EvBikeRequestedPageInitialEvent event,
    Emitter<EvBikeRequestedPageState> emit,
  ) async {}
}
