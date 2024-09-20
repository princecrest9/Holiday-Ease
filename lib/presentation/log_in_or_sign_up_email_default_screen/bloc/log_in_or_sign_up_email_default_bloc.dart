import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/log_in_or_sign_up_email_default_model.dart';
part 'log_in_or_sign_up_email_default_event.dart';
part 'log_in_or_sign_up_email_default_state.dart';

/// A bloc that manages the state of a LogInOrSignUpEmailDefault according to the event that is dispatched to it.
class LogInOrSignUpEmailDefaultBloc extends Bloc<LogInOrSignUpEmailDefaultEvent,
    LogInOrSignUpEmailDefaultState> {
  LogInOrSignUpEmailDefaultBloc(LogInOrSignUpEmailDefaultState initialState)
      : super(initialState) {
    on<LogInOrSignUpEmailDefaultInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogInOrSignUpEmailDefaultInitialEvent event,
    Emitter<LogInOrSignUpEmailDefaultState> emit,
  ) async {
    emit(
      state.copyWith(
        emailInputController: TextEditingController(),
      ),
    );
  }
}
