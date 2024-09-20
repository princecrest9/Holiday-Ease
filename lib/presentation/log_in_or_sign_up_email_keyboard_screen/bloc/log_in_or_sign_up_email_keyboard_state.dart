part of 'log_in_or_sign_up_email_keyboard_bloc.dart';

/// Represents the state of LogInOrSignUpEmailKeyboard in the application.

// ignore_for_file: must_be_immutable
class LogInOrSignUpEmailKeyboardState extends Equatable {
  LogInOrSignUpEmailKeyboardState(
      {this.emailFieldController, this.logInOrSignUpEmailKeyboardModelObj});

  TextEditingController? emailFieldController;

  LogInOrSignUpEmailKeyboardModel? logInOrSignUpEmailKeyboardModelObj;

  @override
  List<Object?> get props =>
      [emailFieldController, logInOrSignUpEmailKeyboardModelObj];
  LogInOrSignUpEmailKeyboardState copyWith({
    TextEditingController? emailFieldController,
    LogInOrSignUpEmailKeyboardModel? logInOrSignUpEmailKeyboardModelObj,
  }) {
    return LogInOrSignUpEmailKeyboardState(
      emailFieldController: emailFieldController ?? this.emailFieldController,
      logInOrSignUpEmailKeyboardModelObj: logInOrSignUpEmailKeyboardModelObj ??
          this.logInOrSignUpEmailKeyboardModelObj,
    );
  }
}
