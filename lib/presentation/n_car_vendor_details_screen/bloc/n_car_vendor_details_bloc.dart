import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/n_car_vendor_details_screen/models/n_car_vendor_details_model.dart';
part 'n_car_vendor_details_event.dart';
part 'n_car_vendor_details_state.dart';

/// A bloc that manages the state of a NCarVendorDetails according to the event that is dispatched to it.
class NCarVendorDetailsBloc
    extends Bloc<NCarVendorDetailsEvent, NCarVendorDetailsState> {
  NCarVendorDetailsBloc(NCarVendorDetailsState initialState)
      : super(initialState) {
    on<NCarVendorDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NCarVendorDetailsInitialEvent event,
    Emitter<NCarVendorDetailsState> emit,
  ) async {}
}
