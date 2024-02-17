import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/car_issue_page_bottomsheet/models/car_issue_page_model.dart';
part 'car_issue_page_event.dart';
part 'car_issue_page_state.dart';

/// A bloc that manages the state of a CarIssuePage according to the event that is dispatched to it.
class CarIssuePageBloc extends Bloc<CarIssuePageEvent, CarIssuePageState> {
  CarIssuePageBloc(CarIssuePageState initialState) : super(initialState) {
    on<CarIssuePageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CarIssuePageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<CarIssuePageState> emit,
  ) {
    emit(state.copyWith(radioGroup1: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_normal", "lbl_ev"];
  }

  _onInitialize(
    CarIssuePageInitialEvent event,
    Emitter<CarIssuePageState> emit,
  ) async {
    emit(state.copyWith(radioGroup: "", radioGroup1: ""));
    emit(state.copyWith(
        carIssuePageModelObj:
            state.carIssuePageModelObj?.copyWith(radioList: fillRadioList())));
  }
}
