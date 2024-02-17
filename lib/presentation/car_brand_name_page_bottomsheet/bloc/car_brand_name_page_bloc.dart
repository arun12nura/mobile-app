import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/car_brand_name_page_bottomsheet/models/car_brand_name_page_model.dart';
part 'car_brand_name_page_event.dart';
part 'car_brand_name_page_state.dart';

/// A bloc that manages the state of a CarBrandNamePage according to the event that is dispatched to it.
class CarBrandNamePageBloc
    extends Bloc<CarBrandNamePageEvent, CarBrandNamePageState> {
  CarBrandNamePageBloc(CarBrandNamePageState initialState)
      : super(initialState) {
    on<CarBrandNamePageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CarBrandNamePageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<CarBrandNamePageState> emit,
  ) {
    emit(state.copyWith(radioGroup1: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_normal", "lbl_ev"];
  }

  List<String> fillRadioList1() {
    return ["lbl_nexa", "lbl_maruti_suzuki", "lbl_tata"];
  }

  _onInitialize(
    CarBrandNamePageInitialEvent event,
    Emitter<CarBrandNamePageState> emit,
  ) async {
    emit(state.copyWith(radioGroup: "", radioGroup1: ""));
    emit(state.copyWith(
        carBrandNamePageModelObj: state.carBrandNamePageModelObj?.copyWith(
            radioList: fillRadioList(), radioList1: fillRadioList1())));
  }
}
