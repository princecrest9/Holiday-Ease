import 'package:equatable/equatable.dart';
import 'griddates_item_model.dart';

/// This class defines the variables used in the [explore_stays_start_date_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ExploreStaysStartDateModel extends Equatable {
  ExploreStaysStartDateModel({this.griddatesItemList = const []});

  List<GriddatesItemModel> griddatesItemList;

  ExploreStaysStartDateModel copyWith(
      {List<GriddatesItemModel>? griddatesItemList}) {
    return ExploreStaysStartDateModel(
      griddatesItemList: griddatesItemList ?? this.griddatesItemList,
    );
  }

  @override
  List<Object?> get props => [griddatesItemList];
}
