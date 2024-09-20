import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/explore_stays_start_date_model.dart';
import '../models/griddates_item_model.dart';
part 'explore_stays_start_date_event.dart';
part 'explore_stays_start_date_state.dart';

/// A bloc that manages the state of a ExploreStaysStartDate according to the event that is dispatched to it.
class ExploreStaysStartDateBloc
    extends Bloc<ExploreStaysStartDateEvent, ExploreStaysStartDateState> {
  ExploreStaysStartDateBloc(ExploreStaysStartDateState initialState)
      : super(initialState) {
    on<ExploreStaysStartDateInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreStaysStartDateInitialEvent event,
    Emitter<ExploreStaysStartDateState> emit,
  ) async {
    emit(
      state.copyWith(
        exploreStaysStartDateModelObj:
            state.exploreStaysStartDateModelObj?.copyWith(
          griddatesItemList: fillGriddatesItemList(),
        ),
      ),
    );
  }

  List<GriddatesItemModel> fillGriddatesItemList() {
    return [
      GriddatesItemModel(eleven: "11"),
      GriddatesItemModel(eleven: "12"),
      GriddatesItemModel(eleven: "13"),
      GriddatesItemModel(eleven: "14"),
      GriddatesItemModel(eleven: "15"),
      GriddatesItemModel(eleven: "16"),
      GriddatesItemModel(eleven: "17"),
      GriddatesItemModel(eleven: "18"),
      GriddatesItemModel(eleven: "19"),
      GriddatesItemModel(eleven: "20"),
      GriddatesItemModel(eleven: "21"),
      GriddatesItemModel(eleven: "22"),
      GriddatesItemModel(eleven: "23"),
      GriddatesItemModel(eleven: "24"),
      GriddatesItemModel(eleven: "25"),
      GriddatesItemModel(eleven: "26"),
      GriddatesItemModel(eleven: "27"),
      GriddatesItemModel(eleven: "28"),
      GriddatesItemModel(eleven: "29"),
      GriddatesItemModel(eleven: "30"),
      GriddatesItemModel()
    ];
  }
}
