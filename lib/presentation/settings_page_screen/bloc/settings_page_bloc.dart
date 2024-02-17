import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/settings_page_screen/models/settings_page_model.dart';
part 'settings_page_event.dart';
part 'settings_page_state.dart';

/// A bloc that manages the state of a SettingsPage according to the event that is dispatched to it.
class SettingsPageBloc extends Bloc<SettingsPageEvent, SettingsPageState> {
  SettingsPageBloc(SettingsPageState initialState) : super(initialState) {
    on<SettingsPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsPageInitialEvent event,
    Emitter<SettingsPageState> emit,
  ) async {}
}
