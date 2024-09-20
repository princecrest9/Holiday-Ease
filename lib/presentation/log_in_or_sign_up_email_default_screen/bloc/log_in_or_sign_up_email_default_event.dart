part of 'log_in_or_sign_up_email_default_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LogInOrSignUpEmailDefault widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LogInOrSignUpEmailDefaultEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LogInOrSignUpEmailDefault widget is first created.
class LogInOrSignUpEmailDefaultInitialEvent
    extends LogInOrSignUpEmailDefaultEvent {
  @override
  List<Object?> get props => [];
}
