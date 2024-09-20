part of 'explore_map_location_bloc.dart';

/// Represents the state of ExploreMapLocation in the application.

// ignore_for_file: must_be_immutable
class ExploreMapLocationState extends Equatable {
  ExploreMapLocationState({this.exploreMapLocationModelObj});

  ExploreMapLocationModel? exploreMapLocationModelObj;

  @override
  List<Object?> get props => [exploreMapLocationModelObj];
  ExploreMapLocationState copyWith(
      {ExploreMapLocationModel? exploreMapLocationModelObj}) {
    return ExploreMapLocationState(
      exploreMapLocationModelObj:
          exploreMapLocationModelObj ?? this.exploreMapLocationModelObj,
    );
  }
}
