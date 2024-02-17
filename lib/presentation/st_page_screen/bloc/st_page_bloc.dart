import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/st_page_screen/models/st_page_model.dart';
part 'st_page_event.dart';
part 'st_page_state.dart';

/// A bloc that manages the state of a StPage according to the event that is dispatched to it.
class StPageBloc extends Bloc<StPageEvent, StPageState> {
  StPageBloc(StPageState initialState) : super(initialState) {
    on<StPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StPageInitialEvent event,
    Emitter<StPageState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.logInScreen,
      );
    });
  }
}
