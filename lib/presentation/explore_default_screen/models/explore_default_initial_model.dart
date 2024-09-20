import 'package:equatable/equatable.dart';
import 'favoriteslider_item_model.dart';

/// This class is used in the [explore_default_initial_page] screen.

// ignore_for_file: must_be_immutable
class ExploreDefaultInitialModel extends Equatable {
  ExploreDefaultInitialModel({this.favoritesliderItemList = const []});

  List<FavoritesliderItemModel> favoritesliderItemList;

  ExploreDefaultInitialModel copyWith(
      {List<FavoritesliderItemModel>? favoritesliderItemList}) {
    return ExploreDefaultInitialModel(
      favoritesliderItemList:
          favoritesliderItemList ?? this.favoritesliderItemList,
    );
  }

  @override
  List<Object?> get props => [favoritesliderItemList];
}
