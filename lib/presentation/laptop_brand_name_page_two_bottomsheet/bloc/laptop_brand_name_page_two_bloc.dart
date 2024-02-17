import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/laptop_brand_name_page_two_bottomsheet/models/laptop_brand_name_page_two_model.dart';
part 'laptop_brand_name_page_two_event.dart';
part 'laptop_brand_name_page_two_state.dart';

/// A bloc that manages the state of a LaptopBrandNamePageTwo according to the event that is dispatched to it.
class LaptopBrandNamePageTwoBloc
    extends Bloc<LaptopBrandNamePageTwoEvent, LaptopBrandNamePageTwoState> {
  LaptopBrandNamePageTwoBloc(LaptopBrandNamePageTwoState initialState)
      : super(initialState) {
    on<LaptopBrandNamePageTwoInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<LaptopBrandNamePageTwoState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<LaptopBrandNamePageTwoState> emit,
  ) {
    emit(state.copyWith(warrantyDetails: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_laptop", "lbl_computer"];
  }

  List<String> fillRadioList1() {
    return ["msg_company_warranty", "lbl_no_warranty2"];
  }

  _onInitialize(
    LaptopBrandNamePageTwoInitialEvent event,
    Emitter<LaptopBrandNamePageTwoState> emit,
  ) async {
    emit(state.copyWith(radioGroup: "", warrantyDetails: ""));
    emit(state.copyWith(
        laptopBrandNamePageTwoModelObj: state.laptopBrandNamePageTwoModelObj
            ?.copyWith(
                radioList: fillRadioList(), radioList1: fillRadioList1())));
  }
}
