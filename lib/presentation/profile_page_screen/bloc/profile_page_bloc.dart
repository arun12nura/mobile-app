import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dos/presentation/profile_page_screen/models/profile_page_model.dart';
part 'profile_page_event.dart';
part 'profile_page_state.dart';

/// A bloc that manages the state of a ProfilePage according to the event that is dispatched to it.
class ProfilePageBloc extends Bloc<ProfilePageEvent, ProfilePageState> {
  ProfilePageBloc(ProfilePageState initialState) : super(initialState) {
    on<ProfilePageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfilePageInitialEvent event,
    Emitter<ProfilePageState> emit,
  ) async {}
}
