import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/referal_page_screen/models/referal_page_model.dart';
part 'referal_page_event.dart';
part 'referal_page_state.dart';

/// A bloc that manages the state of a ReferalPage according to the event that is dispatched to it.
class ReferalPageBloc extends Bloc<ReferalPageEvent, ReferalPageState> {
  ReferalPageBloc(ReferalPageState initialState) : super(initialState) {
    on<ReferalPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReferalPageInitialEvent event,
    Emitter<ReferalPageState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
