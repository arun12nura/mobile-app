import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/n_bike_vendor_details_screen/models/n_bike_vendor_details_model.dart';
part 'n_bike_vendor_details_event.dart';
part 'n_bike_vendor_details_state.dart';

/// A bloc that manages the state of a NBikeVendorDetails according to the event that is dispatched to it.
class NBikeVendorDetailsBloc
    extends Bloc<NBikeVendorDetailsEvent, NBikeVendorDetailsState> {
  NBikeVendorDetailsBloc(NBikeVendorDetailsState initialState)
      : super(initialState) {
    on<NBikeVendorDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NBikeVendorDetailsInitialEvent event,
    Emitter<NBikeVendorDetailsState> emit,
  ) async {}
}
