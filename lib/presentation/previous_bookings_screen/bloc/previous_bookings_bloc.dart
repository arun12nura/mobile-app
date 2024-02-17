import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:dos/presentation/previous_bookings_screen/models/previous_bookings_model.dart';
part 'previous_bookings_event.dart';
part 'previous_bookings_state.dart';

/// A bloc that manages the state of a PreviousBookings according to the event that is dispatched to it.
class PreviousBookingsBloc
    extends Bloc<PreviousBookingsEvent, PreviousBookingsState> {
  PreviousBookingsBloc(PreviousBookingsState initialState)
      : super(initialState) {
    on<PreviousBookingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PreviousBookingsInitialEvent event,
    Emitter<PreviousBookingsState> emit,
  ) async {
    emit(state.copyWith(
        previousBookingsModelObj: state.previousBookingsModelObj
            ?.copyWith(userprofileItemList: fillUserprofileItemList())));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          userImage: ImageConstant.imgRectangle3391x110,
          settingsImage: ImageConstant.imgSettings,
          text1: "z",
          text2: "Swift ",
          text3: "Dzire LXi 2019",
          text4: "Speedometer "),
      UserprofileItemModel(
          userImage: ImageConstant.imgRectangle331,
          settingsImage: ImageConstant.imgSettingsBlack90001,
          text1: "z",
          text2: "Royal enfield",
          text3: "Classic 350",
          text4: "Starting Trouble ")
    ];
  }
}
