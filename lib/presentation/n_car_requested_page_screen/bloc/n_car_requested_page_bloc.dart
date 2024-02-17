import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/n_car_requested_page_screen/models/n_car_requested_page_model.dart';
part 'n_car_requested_page_event.dart';
part 'n_car_requested_page_state.dart';

/// A bloc that manages the state of a NCarRequestedPage according to the event that is dispatched to it.
class NCarRequestedPageBloc
    extends Bloc<NCarRequestedPageEvent, NCarRequestedPageState> {
  NCarRequestedPageBloc(NCarRequestedPageState initialState)
      : super(initialState) {
    on<NCarRequestedPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NCarRequestedPageInitialEvent event,
    Emitter<NCarRequestedPageState> emit,
  ) async {}
}
