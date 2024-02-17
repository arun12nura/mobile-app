import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/requested_page_nbike_screen/models/requested_page_nbike_model.dart';
part 'requested_page_nbike_event.dart';
part 'requested_page_nbike_state.dart';

/// A bloc that manages the state of a RequestedPageNbike according to the event that is dispatched to it.
class RequestedPageNbikeBloc
    extends Bloc<RequestedPageNbikeEvent, RequestedPageNbikeState> {
  RequestedPageNbikeBloc(RequestedPageNbikeState initialState)
      : super(initialState) {
    on<RequestedPageNbikeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RequestedPageNbikeInitialEvent event,
    Emitter<RequestedPageNbikeState> emit,
  ) async {}
}
