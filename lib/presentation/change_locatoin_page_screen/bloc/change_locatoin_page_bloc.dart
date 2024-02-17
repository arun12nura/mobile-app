import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/change_locatoin_page_screen/models/change_locatoin_page_model.dart';
part 'change_locatoin_page_event.dart';
part 'change_locatoin_page_state.dart';

/// A bloc that manages the state of a ChangeLocatoinPage according to the event that is dispatched to it.
class ChangeLocatoinPageBloc
    extends Bloc<ChangeLocatoinPageEvent, ChangeLocatoinPageState> {
  ChangeLocatoinPageBloc(ChangeLocatoinPageState initialState)
      : super(initialState) {
    on<ChangeLocatoinPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChangeLocatoinPageInitialEvent event,
    Emitter<ChangeLocatoinPageState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
