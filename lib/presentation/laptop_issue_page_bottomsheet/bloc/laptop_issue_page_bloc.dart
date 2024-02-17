import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/laptop_issue_page_bottomsheet/models/laptop_issue_page_model.dart';
part 'laptop_issue_page_event.dart';
part 'laptop_issue_page_state.dart';

/// A bloc that manages the state of a LaptopIssuePage according to the event that is dispatched to it.
class LaptopIssuePageBloc
    extends Bloc<LaptopIssuePageEvent, LaptopIssuePageState> {
  LaptopIssuePageBloc(LaptopIssuePageState initialState) : super(initialState) {
    on<LaptopIssuePageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<LaptopIssuePageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<LaptopIssuePageState> emit,
  ) {
    emit(state.copyWith(radioGroup1: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_laptop", "lbl_computer"];
  }

  _onInitialize(
    LaptopIssuePageInitialEvent event,
    Emitter<LaptopIssuePageState> emit,
  ) async {
    emit(state.copyWith(radioGroup: "", radioGroup1: ""));
    emit(state.copyWith(
        laptopIssuePageModelObj: state.laptopIssuePageModelObj
            ?.copyWith(radioList: fillRadioList())));
  }
}
