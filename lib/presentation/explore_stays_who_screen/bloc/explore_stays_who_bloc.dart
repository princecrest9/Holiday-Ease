import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/explore_stays_who_model.dart';
import '../models/listchildren_item_model.dart';
part 'explore_stays_who_event.dart';
part 'explore_stays_who_state.dart';

/// A bloc that manages the state of a ExploreStaysWho according to the event that is dispatched to it.
class ExploreStaysWhoBloc
    extends Bloc<ExploreStaysWhoEvent, ExploreStaysWhoState> {
  ExploreStaysWhoBloc(ExploreStaysWhoState initialState) : super(initialState) {
    on<ExploreStaysWhoInitialEvent>(_onInitialize);
    on<DecrementQuantity1Event>(_decrementQuantity1);
    on<IncrementQuantity1Event>(_incrementQuantity1);
  }

  _onInitialize(
    ExploreStaysWhoInitialEvent event,
    Emitter<ExploreStaysWhoState> emit,
  ) async {
    emit(
      state.copyWith(
        exploreStaysWhoModelObj: state.exploreStaysWhoModelObj?.copyWith(
          listchildrenItemList: fillListchildrenItemList(),
        ),
      ),
    );
  }

  _decrementQuantity1(
    DecrementQuantity1Event event,
    Emitter<ExploreStaysWhoState> emit,
  ) {
    final updatedList =
        state.exploreStaysWhoModelObj?.listchildrenItemList.map((item) {
      if (item == event.listchildrenItemModelObj) {
        final quantity = item.quantity ?? 1;
        item = item.copyWith(quantity: quantity > 1 ? quantity - 1 : 1);
      }
      return item;
    }).toList();
    emit(state.copyWith(
        exploreStaysWhoModelObj: state.exploreStaysWhoModelObj
            ?.copyWith(listchildrenItemList: updatedList)));
  }

  _incrementQuantity1(
    IncrementQuantity1Event event,
    Emitter<ExploreStaysWhoState> emit,
  ) {
    final updatedList =
        state.exploreStaysWhoModelObj?.listchildrenItemList.map((item) {
      if (item == event.listchildrenItemModelObj) {
        final quantity = item.quantity ?? 1;
        item = item.copyWith(quantity: quantity + 1);
      }
      return item;
    }).toList();
    emit(state.copyWith(
        exploreStaysWhoModelObj: state.exploreStaysWhoModelObj
            ?.copyWith(listchildrenItemList: updatedList)));
  }

  List<ListchildrenItemModel> fillListchildrenItemList() {
    return [
      ListchildrenItemModel(
          children: "Adults", ages2twelve: "Ages 13 or above"),
      ListchildrenItemModel(children: "Children", ages2twelve: "Ages 2-12"),
      ListchildrenItemModel(children: "Infants", ages2twelve: "Under 2"),
      ListchildrenItemModel()
    ];
  }
}
