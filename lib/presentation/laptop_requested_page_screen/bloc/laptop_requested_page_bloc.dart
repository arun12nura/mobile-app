import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/laptop_requested_page_screen/models/laptop_requested_page_model.dart';
part 'laptop_requested_page_event.dart';
part 'laptop_requested_page_state.dart';

/// A bloc that manages the state of a LaptopRequestedPage according to the event that is dispatched to it.
class LaptopRequestedPageBloc
    extends Bloc<LaptopRequestedPageEvent, LaptopRequestedPageState> {
  LaptopRequestedPageBloc(LaptopRequestedPageState initialState)
      : super(initialState) {
    on<LaptopRequestedPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LaptopRequestedPageInitialEvent event,
    Emitter<LaptopRequestedPageState> emit,
  ) async {}
}
