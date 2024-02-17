import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/car_page_bottomsheet/models/car_page_model.dart';
part 'car_page_event.dart';
part 'car_page_state.dart';

/// A bloc that manages the state of a CarPage according to the event that is dispatched to it.
class CarPageBloc extends Bloc<CarPageEvent, CarPageState> {
  CarPageBloc(CarPageState initialState) : super(initialState) {
    on<CarPageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CarPageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_normal", "lbl_ev"];
  }

  _onInitialize(
    CarPageInitialEvent event,
    Emitter<CarPageState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        issuesController: TextEditingController(),
        radioGroup: ""));
    emit(state.copyWith(
        carPageModelObj:
            state.carPageModelObj?.copyWith(radioList: fillRadioList())));
  }
}
