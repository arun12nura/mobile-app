import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/bike_brand_name_page_bottomsheet/models/bike_brand_name_page_model.dart';
part 'bike_brand_name_page_event.dart';
part 'bike_brand_name_page_state.dart';

/// A bloc that manages the state of a BikeBrandNamePage according to the event that is dispatched to it.
class BikeBrandNamePageBloc
    extends Bloc<BikeBrandNamePageEvent, BikeBrandNamePageState> {
  BikeBrandNamePageBloc(BikeBrandNamePageState initialState)
      : super(initialState) {
    on<BikeBrandNamePageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<BikeBrandNamePageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<BikeBrandNamePageState> emit,
  ) {
    emit(state.copyWith(brandName: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_yamaha", "lbl_honda"];
  }

  _onInitialize(
    BikeBrandNamePageInitialEvent event,
    Emitter<BikeBrandNamePageState> emit,
  ) async {
    emit(state.copyWith(radioGroup: "", brandName: ""));
    emit(state.copyWith(
        bikeBrandNamePageModelObj: state.bikeBrandNamePageModelObj
            ?.copyWith(radioList: fillRadioList())));
  }
}
