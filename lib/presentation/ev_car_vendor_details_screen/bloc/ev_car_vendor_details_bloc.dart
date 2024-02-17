import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/ev_car_vendor_details_screen/models/ev_car_vendor_details_model.dart';
part 'ev_car_vendor_details_event.dart';
part 'ev_car_vendor_details_state.dart';

/// A bloc that manages the state of a EvCarVendorDetails according to the event that is dispatched to it.
class EvCarVendorDetailsBloc
    extends Bloc<EvCarVendorDetailsEvent, EvCarVendorDetailsState> {
  EvCarVendorDetailsBloc(EvCarVendorDetailsState initialState)
      : super(initialState) {
    on<EvCarVendorDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EvCarVendorDetailsInitialEvent event,
    Emitter<EvCarVendorDetailsState> emit,
  ) async {}
}
