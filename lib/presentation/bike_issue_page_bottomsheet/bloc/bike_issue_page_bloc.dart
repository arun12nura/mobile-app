import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/bike_issue_page_bottomsheet/models/bike_issue_page_model.dart';
part 'bike_issue_page_event.dart';
part 'bike_issue_page_state.dart';

/// A bloc that manages the state of a BikeIssuePage according to the event that is dispatched to it.
class BikeIssuePageBloc extends Bloc<BikeIssuePageEvent, BikeIssuePageState> {
  BikeIssuePageBloc(BikeIssuePageState initialState) : super(initialState) {
    on<BikeIssuePageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<BikeIssuePageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _onInitialize(
    BikeIssuePageInitialEvent event,
    Emitter<BikeIssuePageState> emit,
  ) async {
    emit(state.copyWith(
        labelThreeController: TextEditingController(), radioGroup: ""));
  }
}
