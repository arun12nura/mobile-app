import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/ev_bike_vendor_detailse_page_screen/models/ev_bike_vendor_detailse_page_model.dart';
part 'ev_bike_vendor_detailse_page_event.dart';
part 'ev_bike_vendor_detailse_page_state.dart';

/// A bloc that manages the state of a EvBikeVendorDetailsePage according to the event that is dispatched to it.
class EvBikeVendorDetailsePageBloc
    extends Bloc<EvBikeVendorDetailsePageEvent, EvBikeVendorDetailsePageState> {
  EvBikeVendorDetailsePageBloc(EvBikeVendorDetailsePageState initialState)
      : super(initialState) {
    on<EvBikeVendorDetailsePageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EvBikeVendorDetailsePageInitialEvent event,
    Emitter<EvBikeVendorDetailsePageState> emit,
  ) async {}
}
