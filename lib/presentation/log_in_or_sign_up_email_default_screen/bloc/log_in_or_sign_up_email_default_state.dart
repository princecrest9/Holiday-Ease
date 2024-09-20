part of 'log_in_or_sign_up_email_default_bloc.dart';

/// Represents the state of LogInOrSignUpEmailDefault in the application.

// ignore_for_file: must_be_immutable
class LogInOrSignUpEmailDefaultState extends Equatable {
  LogInOrSignUpEmailDefaultState(
      {this.emailInputController, this.logInOrSignUpEmailDefaultModelObj});

  TextEditingController? emailInputController;

  LogInOrSignUpEmailDefaultModel? logInOrSignUpEmailDefaultModelObj;

  @override
  List<Object?> get props =>
      [emailInputController, logInOrSignUpEmailDefaultModelObj];
  LogInOrSignUpEmailDefaultState copyWith({
    TextEditingController? emailInputController,
    LogInOrSignUpEmailDefaultModel? logInOrSignUpEmailDefaultModelObj,
  }) {
    return LogInOrSignUpEmailDefaultState(
      emailInputController: emailInputController ?? this.emailInputController,
      logInOrSignUpEmailDefaultModelObj: logInOrSignUpEmailDefaultModelObj ??
          this.logInOrSignUpEmailDefaultModelObj,
    );
  }
}
