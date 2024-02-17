import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/computer_page_bottomsheet/models/computer_page_model.dart';
part 'computer_page_event.dart';
part 'computer_page_state.dart';

/// A bloc that manages the state of a ComputerPage according to the event that is dispatched to it.
class ComputerPageBloc extends Bloc<ComputerPageEvent, ComputerPageState> {
  ComputerPageBloc(ComputerPageState initialState) : super(initialState) {
    on<ComputerPageInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<ComputerPageState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_laptop", "lbl_computer"];
  }

  _onInitialize(
    ComputerPageInitialEvent event,
    Emitter<ComputerPageState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        warrantyDetailsController: TextEditingController(),
        issuesController: TextEditingController(),
        radioGroup: ""));
    emit(state.copyWith(
        computerPageModelObj:
            state.computerPageModelObj?.copyWith(radioList: fillRadioList())));
  }
}
