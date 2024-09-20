part of 'explore_default_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreDefault widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ExploreDefaultEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ExploreDefault widget is first created.
class ExploreDefaultInitialEvent extends ExploreDefaultEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends ExploreDefaultEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}
