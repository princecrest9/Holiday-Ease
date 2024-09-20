part of 'explore_stays_where_to_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreStaysWhereTo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ExploreStaysWhereToEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ExploreStaysWhereTo widget is first created.
class ExploreStaysWhereToInitialEvent extends ExploreStaysWhereToEvent {
  @override
  List<Object?> get props => [];
}
