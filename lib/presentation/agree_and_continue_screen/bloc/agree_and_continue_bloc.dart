import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/agree_and_continue_model.dart';
part 'agree_and_continue_event.dart';
part 'agree_and_continue_state.dart';

/// A bloc that manages the state of a AgreeAndContinue according to the event that is dispatched to it.
class AgreeAndContinueBloc
    extends Bloc<AgreeAndContinueEvent, AgreeAndContinueState> {
  AgreeAndContinueBloc(AgreeAndContinueState initialState)
      : super(initialState) {
    on<AgreeAndContinueInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AgreeAndContinueInitialEvent event,
    Emitter<AgreeAndContinueState> emit,
  ) async {}
}
