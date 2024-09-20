part of 'explore_stays_who_bloc.dart';

/// Represents the state of ExploreStaysWho in the application.

// ignore_for_file: must_be_immutable
class ExploreStaysWhoState extends Equatable {
  ExploreStaysWhoState({this.exploreStaysWhoModelObj});

  ExploreStaysWhoModel? exploreStaysWhoModelObj;

  @override
  List<Object?> get props => [exploreStaysWhoModelObj];
  ExploreStaysWhoState copyWith(
      {ExploreStaysWhoModel? exploreStaysWhoModelObj}) {
    return ExploreStaysWhoState(
      exploreStaysWhoModelObj:
          exploreStaysWhoModelObj ?? this.exploreStaysWhoModelObj,
    );
  }
}
