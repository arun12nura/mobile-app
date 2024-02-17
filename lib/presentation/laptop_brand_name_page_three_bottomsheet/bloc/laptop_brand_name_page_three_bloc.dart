import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/laptop_brand_name_page_three_bottomsheet/models/laptop_brand_name_page_three_model.dart';
part 'laptop_brand_name_page_three_event.dart';
part 'laptop_brand_name_page_three_state.dart';

/// A bloc that manages the state of a LaptopBrandNamePageThree according to the event that is dispatched to it.
class LaptopBrandNamePageThreeBloc
    extends Bloc<LaptopBrandNamePageThreeEvent, LaptopBrandNamePageThreeState> {
  LaptopBrandNamePageThreeBloc(LaptopBrandNamePageThreeState initialState)
      : super(initialState) {
    on<LaptopBrandNamePageThreeInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<LaptopBrandNamePageThreeState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<LaptopBrandNamePageThreeState> emit,
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
    LaptopBrandNamePageThreeInitialEvent event,
    Emitter<LaptopBrandNamePageThreeState> emit,
  ) async {
    emit(state.copyWith(radioGroup: "", warrantyDetails: ""));
    emit(state.copyWith(
        laptopBrandNamePageThreeModelObj: state.laptopBrandNamePageThreeModelObj
            ?.copyWith(
                radioList: fillRadioList(), radioList1: fillRadioList1())));
  }
}
