import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/carbrandselector_item_model.dart';
import 'package:dos/presentation/ev_car_brand_name_page_bottomsheet/models/ev_car_brand_name_page_model.dart';
part 'ev_car_brand_name_page_event.dart';
part 'ev_car_brand_name_page_state.dart';

/// A bloc that manages the state of a EvCarBrandNamePage according to the event that is dispatched to it.
class EvCarBrandNamePageBloc
    extends Bloc<EvCarBrandNamePageEvent, EvCarBrandNamePageState> {
  EvCarBrandNamePageBloc(EvCarBrandNamePageState initialState)
      : super(initialState) {
    on<EvCarBrandNamePageInitialEvent>(_onInitialize);
    on<CarbrandselectorItemEvent>(_carbrandselectorItem);
  }

  _onInitialize(
    EvCarBrandNamePageInitialEvent event,
    Emitter<EvCarBrandNamePageState> emit,
  ) async {
    emit(state.copyWith(
        evCarBrandNamePageModelObj: state.evCarBrandNamePageModelObj?.copyWith(
            carbrandselectorItemList: fillCarbrandselectorItemList())));
  }

  _carbrandselectorItem(
    CarbrandselectorItemEvent event,
    Emitter<EvCarBrandNamePageState> emit,
  ) {
    List<CarbrandselectorItemModel> newList =
        List<CarbrandselectorItemModel>.from(
            state.evCarBrandNamePageModelObj!.carbrandselectorItemList);
    newList[event.index] = newList[event.index]
        .copyWith(radioGroup: event.radioGroup, radioGroup1: event.radioGroup1);
    emit(state.copyWith(
        evCarBrandNamePageModelObj: state.evCarBrandNamePageModelObj
            ?.copyWith(carbrandselectorItemList: newList)));
  }

  List<CarbrandselectorItemModel> fillCarbrandselectorItemList() {
    return List.generate(2, (index) => CarbrandselectorItemModel());
  }
}
