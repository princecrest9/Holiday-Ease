part of 'explore_map_location_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreMapLocation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ExploreMapLocationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ExploreMapLocation widget is first created.
class ExploreMapLocationInitialEvent extends ExploreMapLocationEvent {
  @override
  List<Object?> get props => [];
}
