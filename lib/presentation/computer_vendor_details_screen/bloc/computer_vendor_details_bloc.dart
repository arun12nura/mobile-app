import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/computer_vendor_details_screen/models/computer_vendor_details_model.dart';
part 'computer_vendor_details_event.dart';
part 'computer_vendor_details_state.dart';

/// A bloc that manages the state of a ComputerVendorDetails according to the event that is dispatched to it.
class ComputerVendorDetailsBloc
    extends Bloc<ComputerVendorDetailsEvent, ComputerVendorDetailsState> {
  ComputerVendorDetailsBloc(ComputerVendorDetailsState initialState)
      : super(initialState) {
    on<ComputerVendorDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ComputerVendorDetailsInitialEvent event,
    Emitter<ComputerVendorDetailsState> emit,
  ) async {}
}
