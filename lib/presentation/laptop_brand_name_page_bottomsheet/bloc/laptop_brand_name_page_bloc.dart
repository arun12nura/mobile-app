import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/laptop_brand_name_page_bottomsheet/models/laptop_brand_name_page_model.dart';
part 'laptop_brand_name_page_event.dart';
part 'laptop_brand_name_page_state.dart';

/// A bloc that manages the state of a LaptopBrandNamePage according to the event that is dispatched to it.
class LaptopBrandNamePageBloc
    extends Bloc<LaptopBrandNamePageEvent, LaptopBrandNamePageState> {
  LaptopBrandNamePageBloc(LaptopBrandNamePageState initialState)
      : super(initialState) {
    on<LaptopBrandNamePageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<LaptopBrandNamePageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<LaptopBrandNamePageState> emit,
  ) {
    emit(state.copyWith(brandName: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_laptop", "lbl_computer"];
  }

  List<String> fillRadioList1() {
    return ["lbl_hp", "lbl_asus"];
  }

  _onInitialize(
    LaptopBrandNamePageInitialEvent event,
    Emitter<LaptopBrandNamePageState> emit,
  ) async {
    emit(state.copyWith(radioGroup: "", brandName: ""));
    emit(state.copyWith(
        laptopBrandNamePageModelObj: state.laptopBrandNamePageModelObj
            ?.copyWith(
                radioList: fillRadioList(), radioList1: fillRadioList1())));
  }
}
