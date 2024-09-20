import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/explore_stays_where_to_model.dart';
import '../models/scrollview_tab_model.dart';
import '../models/wrapper_three_item_model.dart';
part 'explore_stays_where_to_event.dart';
part 'explore_stays_where_to_state.dart';

/// A bloc that manages the state of a ExploreStaysWhereTo according to the event that is dispatched to it.
class ExploreStaysWhereToBloc
    extends Bloc<ExploreStaysWhereToEvent, ExploreStaysWhereToState> {
  ExploreStaysWhereToBloc(ExploreStaysWhereToState initialState)
      : super(initialState) {
    on<ExploreStaysWhereToInitialEvent>(_onInitialize);
  }

  List<WrapperThreeItemModel> fillWrapperThreeItemList() {
    return [
      WrapperThreeItemModel(
          australiaOne: ImageConstant.imgImage,
          australiaTwo: "         Australia"),
      WrapperThreeItemModel(
          australiaOne: ImageConstant.imgImage,
          australiaTwo: "      New Zealand "),
      WrapperThreeItemModel(),
      WrapperThreeItemModel()
    ];
  }

  _onInitialize(
    ExploreStaysWhereToInitialEvent event,
    Emitter<ExploreStaysWhereToState> emit,
  ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        scrollviewTabModelObj: state.scrollviewTabModelObj?.copyWith(
          wrapperThreeItemList: fillWrapperThreeItemList(),
        ),
      ),
    );
  }
}
