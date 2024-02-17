import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/laptop_vendor_details_screen/models/laptop_vendor_details_model.dart';
part 'laptop_vendor_details_event.dart';
part 'laptop_vendor_details_state.dart';

/// A bloc that manages the state of a LaptopVendorDetails according to the event that is dispatched to it.
class LaptopVendorDetailsBloc
    extends Bloc<LaptopVendorDetailsEvent, LaptopVendorDetailsState> {
  LaptopVendorDetailsBloc(LaptopVendorDetailsState initialState)
      : super(initialState) {
    on<LaptopVendorDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LaptopVendorDetailsInitialEvent event,
    Emitter<LaptopVendorDetailsState> emit,
  ) async {}
}
