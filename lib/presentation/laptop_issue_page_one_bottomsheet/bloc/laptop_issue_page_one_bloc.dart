import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/laptop_issue_page_one_bottomsheet/models/laptop_issue_page_one_model.dart';
part 'laptop_issue_page_one_event.dart';
part 'laptop_issue_page_one_state.dart';

/// A bloc that manages the state of a LaptopIssuePageOne according to the event that is dispatched to it.
class LaptopIssuePageOneBloc
    extends Bloc<LaptopIssuePageOneEvent, LaptopIssuePageOneState> {
  LaptopIssuePageOneBloc(LaptopIssuePageOneState initialState)
      : super(initialState) {
    on<LaptopIssuePageOneInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<LaptopIssuePageOneState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_laptop", "lbl_computer"];
  }

  _onInitialize(
    LaptopIssuePageOneInitialEvent event,
    Emitter<LaptopIssuePageOneState> emit,
  ) async {
    emit(state.copyWith(
        issuesController: TextEditingController(), radioGroup: ""));
    emit(state.copyWith(
        laptopIssuePageOneModelObj: state.laptopIssuePageOneModelObj
            ?.copyWith(radioList: fillRadioList())));
  }
}
