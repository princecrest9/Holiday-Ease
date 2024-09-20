part of 'agree_and_continue_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AgreeAndContinue widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AgreeAndContinueEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AgreeAndContinue widget is first created.
class AgreeAndContinueInitialEvent extends AgreeAndContinueEvent {
  @override
  List<Object?> get props => [];
}
