import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/selector_item_model.dart';
import 'package:dos/presentation/laptop_brand_name_page_one_bottomsheet/models/laptop_brand_name_page_one_model.dart';
part 'laptop_brand_name_page_one_event.dart';
part 'laptop_brand_name_page_one_state.dart';

/// A bloc that manages the state of a LaptopBrandNamePageOne according to the event that is dispatched to it.
class LaptopBrandNamePageOneBloc
    extends Bloc<LaptopBrandNamePageOneEvent, LaptopBrandNamePageOneState> {
  LaptopBrandNamePageOneBloc(LaptopBrandNamePageOneState initialState)
      : super(initialState) {
    on<LaptopBrandNamePageOneInitialEvent>(_onInitialize);
    on<SelectorItemEvent>(_selectorItem);
  }

  _onInitialize(
    LaptopBrandNamePageOneInitialEvent event,
    Emitter<LaptopBrandNamePageOneState> emit,
  ) async {
    emit(state.copyWith(
        laptopBrandNamePageOneModelObj:
            state.laptopBrandNamePageOneModelObj?.copyWith(
      selectorItemList: fillSelectorItemList(),
    )));
  }

  _selectorItem(
    SelectorItemEvent event,
    Emitter<LaptopBrandNamePageOneState> emit,
  ) {
    List<SelectorItemModel> newList = List<SelectorItemModel>.from(
        state.laptopBrandNamePageOneModelObj!.selectorItemList);
    newList[event.index] = newList[event.index].copyWith(
      radioGroup: event.radioGroup,
      radioGroup1: event.radioGroup1,
    );
    emit(state.copyWith(
        laptopBrandNamePageOneModelObj: state.laptopBrandNamePageOneModelObj
            ?.copyWith(selectorItemList: newList)));
  }

  List<SelectorItemModel> fillSelectorItemList() {
    return List.generate(2, (index) => SelectorItemModel());
  }
}
