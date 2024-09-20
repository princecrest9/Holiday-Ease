import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/log_in_or_sign_up_email_keyboard_model.dart';
part 'log_in_or_sign_up_email_keyboard_event.dart';
part 'log_in_or_sign_up_email_keyboard_state.dart';

/// A bloc that manages the state of a LogInOrSignUpEmailKeyboard according to the event that is dispatched to it.
class LogInOrSignUpEmailKeyboardBloc extends Bloc<
    LogInOrSignUpEmailKeyboardEvent, LogInOrSignUpEmailKeyboardState> {
  LogInOrSignUpEmailKeyboardBloc(LogInOrSignUpEmailKeyboardState initialState)
      : super(initialState) {
    on<LogInOrSignUpEmailKeyboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogInOrSignUpEmailKeyboardInitialEvent event,
    Emitter<LogInOrSignUpEmailKeyboardState> emit,
  ) async {
    emit(
      state.copyWith(
        emailFieldController: TextEditingController(),
      ),
    );
  }
}
