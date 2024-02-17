import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/laptop_page_bottomsheet/models/laptop_page_model.dart';
part 'laptop_page_event.dart';
part 'laptop_page_state.dart';

/// A bloc that manages the state of a LaptopPage according to the event that is dispatched to it.
class LaptopPageBloc extends Bloc<LaptopPageEvent, LaptopPageState> {
  LaptopPageBloc(LaptopPageState initialState) : super(initialState) {
    on<LaptopPageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<LaptopPageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<LaptopPageState> emit,
  ) {
    emit(state.copyWith(radioGroup1: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_laptop", "lbl_computer"];
  }

  _onInitialize(
    LaptopPageInitialEvent event,
    Emitter<LaptopPageState> emit,
  ) async {
    emit(state.copyWith(
        warrantyDetailsController: TextEditingController(),
        issuesController: TextEditingController(),
        radioGroup: "",
        radioGroup1: ""));
    emit(state.copyWith(
        laptopPageModelObj:
            state.laptopPageModelObj?.copyWith(radioList: fillRadioList())));
  }
}
