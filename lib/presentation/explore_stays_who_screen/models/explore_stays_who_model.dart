import 'package:equatable/equatable.dart';
import 'listchildren_item_model.dart';

/// This class defines the variables used in the [explore_stays_who_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ExploreStaysWhoModel extends Equatable {
  ExploreStaysWhoModel({this.listchildrenItemList = const []});

  List<ListchildrenItemModel> listchildrenItemList;

  ExploreStaysWhoModel copyWith(
      {List<ListchildrenItemModel>? listchildrenItemList}) {
    return ExploreStaysWhoModel(
      listchildrenItemList: listchildrenItemList ?? this.listchildrenItemList,
    );
  }

  @override
  List<Object?> get props => [listchildrenItemList];
}
