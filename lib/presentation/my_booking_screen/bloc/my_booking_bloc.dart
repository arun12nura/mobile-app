import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:dos/presentation/my_booking_screen/models/my_booking_model.dart';
part 'my_booking_event.dart';
part 'my_booking_state.dart';

/// A bloc that manages the state of a MyBooking according to the event that is dispatched to it.
class MyBookingBloc extends Bloc<MyBookingEvent, MyBookingState> {
  MyBookingBloc(MyBookingState initialState) : super(initialState) {
    on<MyBookingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyBookingInitialEvent event,
    Emitter<MyBookingState> emit,
  ) async {
    emit(state.copyWith(
        myBookingModelObj: state.myBookingModelObj?.copyWith(
            userprofilelistItemList: fillUserprofilelistItemList())));
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          lenovo: ImageConstant.imgRectangle33,
          lenovoImage: ImageConstant.imgComputer,
          lenovoText: "Lenovo",
          zText: "z",
          ideapadText: "Ideapad 520",
          noWarrantyImage: ImageConstant.imgShield,
          noWarrantyText: "No warranty ",
          keyboardImage: ImageConstant.imgUpload,
          keyboardText: "Key board not workng",
          checkmarkImage: ImageConstant.imgCheckmark,
          acceptedText: "Accepted"),
      UserprofilelistItemModel(lenovo: ImageConstant.imgRectangle3391x110),
      UserprofilelistItemModel(lenovo: ImageConstant.imgRectangle331)
    ];
  }
}
