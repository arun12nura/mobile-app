import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/bike_page_bottomsheet/models/bike_page_model.dart';
part 'bike_page_event.dart';
part 'bike_page_state.dart';

/// A bloc that manages the state of a BikePage according to the event that is dispatched to it.
class BikePageBloc extends Bloc<BikePageEvent, BikePageState> {
  BikePageBloc(BikePageState initialState) : super(initialState) {
    on<BikePageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<BikePageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _onInitialize(
    BikePageInitialEvent event,
    Emitter<BikePageState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        issuesController: TextEditingController(),
        radioGroup: ""));
  }
}
