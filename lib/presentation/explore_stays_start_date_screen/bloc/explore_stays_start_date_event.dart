part of 'explore_stays_start_date_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreStaysStartDate widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ExploreStaysStartDateEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ExploreStaysStartDate widget is first created.
class ExploreStaysStartDateInitialEvent extends ExploreStaysStartDateEvent {
  @override
  List<Object?> get props => [];
}
