import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/explore_default_initial_model.dart';
import '../models/explore_default_model.dart';
import '../models/favoriteslider_item_model.dart';
part 'explore_default_event.dart';
part 'explore_default_state.dart';

/// A bloc that manages the state of a ExploreDefault according to the event that is dispatched to it.
class ExploreDefaultBloc
    extends Bloc<ExploreDefaultEvent, ExploreDefaultState> {
  ExploreDefaultBloc(ExploreDefaultState initialState) : super(initialState) {
    on<ExploreDefaultInitialEvent>(_onInitialize);
    on<ChangeSliderIndexEvent>(_changeSliderIndex);
  }

  _changeSliderIndex(
    ChangeSliderIndexEvent event,
    Emitter<ExploreDefaultState> emit,
  ) {
    emit(state.copyWith(
      sliderIndex: event.value,
    ));
  }

  List<FavoritesliderItemModel> fillFavoritesliderItemList() {
    return List.generate(1, (index) => FavoritesliderItemModel());
  }

  _onInitialize(
    ExploreDefaultInitialEvent event,
    Emitter<ExploreDefaultState> emit,
  ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
        sliderIndex: 0,
      ),
    );
    emit(
      state.copyWith(
        exploreDefaultInitialModelObj:
            state.exploreDefaultInitialModelObj?.copyWith(
          favoritesliderItemList: fillFavoritesliderItemList(),
        ),
      ),
    );
  }
}
