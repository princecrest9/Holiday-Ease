part of 'log_in_or_sign_up_email_keyboard_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LogInOrSignUpEmailKeyboard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LogInOrSignUpEmailKeyboardEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LogInOrSignUpEmailKeyboard widget is first created.
class LogInOrSignUpEmailKeyboardInitialEvent
    extends LogInOrSignUpEmailKeyboardEvent {
  @override
  List<Object?> get props => [];
}
