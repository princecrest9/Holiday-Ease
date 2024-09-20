part of 'explore_default_bloc.dart';

/// Represents the state of ExploreDefault in the application.

// ignore_for_file: must_be_immutable
class ExploreDefaultState extends Equatable {
  ExploreDefaultState(
      {this.searchController,
      this.sliderIndex = 0,
      this.exploreDefaultInitialModelObj,
      this.exploreDefaultModelObj});

  TextEditingController? searchController;

  ExploreDefaultModel? exploreDefaultModelObj;

  int sliderIndex;

  ExploreDefaultInitialModel? exploreDefaultInitialModelObj;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        exploreDefaultInitialModelObj,
        exploreDefaultModelObj
      ];
  ExploreDefaultState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    ExploreDefaultInitialModel? exploreDefaultInitialModelObj,
    ExploreDefaultModel? exploreDefaultModelObj,
  }) {
    return ExploreDefaultState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      exploreDefaultInitialModelObj:
          exploreDefaultInitialModelObj ?? this.exploreDefaultInitialModelObj,
      exploreDefaultModelObj:
          exploreDefaultModelObj ?? this.exploreDefaultModelObj,
    );
  }
}
