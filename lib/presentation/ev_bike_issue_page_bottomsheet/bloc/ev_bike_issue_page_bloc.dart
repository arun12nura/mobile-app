import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/ev_bike_issue_page_bottomsheet/models/ev_bike_issue_page_model.dart';
part 'ev_bike_issue_page_event.dart';
part 'ev_bike_issue_page_state.dart';

/// A bloc that manages the state of a EvBikeIssuePage according to the event that is dispatched to it.
class EvBikeIssuePageBloc
    extends Bloc<EvBikeIssuePageEvent, EvBikeIssuePageState> {
  EvBikeIssuePageBloc(EvBikeIssuePageState initialState) : super(initialState) {
    on<EvBikeIssuePageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<EvBikeIssuePageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_normal", "lbl_ev"];
  }

  _onInitialize(
    EvBikeIssuePageInitialEvent event,
    Emitter<EvBikeIssuePageState> emit,
  ) async {
    emit(state.copyWith(
        labelThreeController: TextEditingController(), radioGroup: ""));
    emit(state.copyWith(
        evBikeIssuePageModelObj: state.evBikeIssuePageModelObj
            ?.copyWith(radioList: fillRadioList())));
  }
}
