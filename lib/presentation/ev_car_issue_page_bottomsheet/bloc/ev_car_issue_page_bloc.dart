import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/ev_car_issue_page_bottomsheet/models/ev_car_issue_page_model.dart';
part 'ev_car_issue_page_event.dart';
part 'ev_car_issue_page_state.dart';

/// A bloc that manages the state of a EvCarIssuePage according to the event that is dispatched to it.
class EvCarIssuePageBloc
    extends Bloc<EvCarIssuePageEvent, EvCarIssuePageState> {
  EvCarIssuePageBloc(EvCarIssuePageState initialState) : super(initialState) {
    on<EvCarIssuePageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<EvCarIssuePageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_normal", "lbl_ev"];
  }

  _onInitialize(
    EvCarIssuePageInitialEvent event,
    Emitter<EvCarIssuePageState> emit,
  ) async {
    emit(state.copyWith(
        labelThreeController: TextEditingController(), radioGroup: ""));
    emit(state.copyWith(
        evCarIssuePageModelObj: state.evCarIssuePageModelObj
            ?.copyWith(radioList: fillRadioList())));
  }
}
