import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/explore_map_location_model.dart';
part 'explore_map_location_event.dart';
part 'explore_map_location_state.dart';

/// A bloc that manages the state of a ExploreMapLocation according to the event that is dispatched to it.
class ExploreMapLocationBloc
    extends Bloc<ExploreMapLocationEvent, ExploreMapLocationState> {
  ExploreMapLocationBloc(ExploreMapLocationState initialState)
      : super(initialState) {
    on<ExploreMapLocationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreMapLocationInitialEvent event,
    Emitter<ExploreMapLocationState> emit,
  ) async {}
}
