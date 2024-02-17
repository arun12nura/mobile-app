import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/ev_car_page_bottomsheet/models/ev_car_page_model.dart';
part 'ev_car_page_event.dart';
part 'ev_car_page_state.dart';

/// A bloc that manages the state of a EvCarPage according to the event that is dispatched to it.
class EvCarPageBloc extends Bloc<EvCarPageEvent, EvCarPageState> {
  EvCarPageBloc(EvCarPageState initialState) : super(initialState) {
    on<EvCarPageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<EvCarPageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_normal", "lbl_ev"];
  }

  _onInitialize(
    EvCarPageInitialEvent event,
    Emitter<EvCarPageState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        issuesController: TextEditingController(),
        radioGroup: ""));
    emit(state.copyWith(
        evCarPageModelObj:
            state.evCarPageModelObj?.copyWith(radioList: fillRadioList())));
  }
}
