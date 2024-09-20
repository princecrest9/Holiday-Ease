import 'package:equatable/equatable.dart';
import 'wrapper_three_item_model.dart';

/// This class is used in the [scrollview_tab_page] screen.

// ignore_for_file: must_be_immutable
class ScrollviewTabModel extends Equatable {
  ScrollviewTabModel({this.wrapperThreeItemList = const []});

  List<WrapperThreeItemModel> wrapperThreeItemList;

  ScrollviewTabModel copyWith(
      {List<WrapperThreeItemModel>? wrapperThreeItemList}) {
    return ScrollviewTabModel(
      wrapperThreeItemList: wrapperThreeItemList ?? this.wrapperThreeItemList,
    );
  }

  @override
  List<Object?> get props => [wrapperThreeItemList];
}
