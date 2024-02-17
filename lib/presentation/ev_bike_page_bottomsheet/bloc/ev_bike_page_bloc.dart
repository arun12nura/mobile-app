import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/ev_bike_page_bottomsheet/models/ev_bike_page_model.dart';
part 'ev_bike_page_event.dart';
part 'ev_bike_page_state.dart';

/// A bloc that manages the state of a EvBikePage according to the event that is dispatched to it.
class EvBikePageBloc extends Bloc<EvBikePageEvent, EvBikePageState> {
  EvBikePageBloc(EvBikePageState initialState) : super(initialState) {
    on<EvBikePageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<EvBikePageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_normal", "lbl_ev"];
  }

  _onInitialize(
    EvBikePageInitialEvent event,
    Emitter<EvBikePageState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        issuesController: TextEditingController(),
        radioGroup: ""));
    emit(state.copyWith(
        evBikePageModelObj:
            state.evBikePageModelObj?.copyWith(radioList: fillRadioList())));
  }
}
