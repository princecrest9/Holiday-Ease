part of 'explore_stays_who_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreStaysWho widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ExploreStaysWhoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ExploreStaysWho widget is first created.
class ExploreStaysWhoInitialEvent extends ExploreStaysWhoEvent {
  @override
  List<Object?> get props => [];
}

///Event for updating quantity

// ignore_for_file: must_be_immutable
class DecrementQuantity1Event extends ExploreStaysWhoEvent {
  DecrementQuantity1Event({required this.listchildrenItemModelObj});

  ListchildrenItemModel listchildrenItemModelObj;

  @override
  List<Object?> get props => [listchildrenItemModelObj];
}

///Event for updating quantity

// ignore_for_file: must_be_immutable
class IncrementQuantity1Event extends ExploreStaysWhoEvent {
  IncrementQuantity1Event({required this.listchildrenItemModelObj});

  ListchildrenItemModel listchildrenItemModelObj;

  @override
  List<Object?> get props => [listchildrenItemModelObj];
}
