part of 'explore_stays_where_to_bloc.dart';

/// Represents the state of ExploreStaysWhereTo in the application.

// ignore_for_file: must_be_immutable
class ExploreStaysWhereToState extends Equatable {
  ExploreStaysWhereToState(
      {this.searchController,
      this.scrollviewTabModelObj,
      this.exploreStaysWhereToModelObj});

  TextEditingController? searchController;

  ExploreStaysWhereToModel? exploreStaysWhereToModelObj;

  ScrollviewTabModel? scrollviewTabModelObj;

  @override
  List<Object?> get props =>
      [searchController, scrollviewTabModelObj, exploreStaysWhereToModelObj];
  ExploreStaysWhereToState copyWith({
    TextEditingController? searchController,
    ScrollviewTabModel? scrollviewTabModelObj,
    ExploreStaysWhereToModel? exploreStaysWhereToModelObj,
  }) {
    return ExploreStaysWhereToState(
      searchController: searchController ?? this.searchController,
      scrollviewTabModelObj:
          scrollviewTabModelObj ?? this.scrollviewTabModelObj,
      exploreStaysWhereToModelObj:
          exploreStaysWhereToModelObj ?? this.exploreStaysWhereToModelObj,
    );
  }
}
