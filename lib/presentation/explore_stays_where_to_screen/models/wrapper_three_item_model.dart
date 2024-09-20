import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [wrapper_three_item_widget] screen.

// ignore_for_file: must_be_immutable
class WrapperThreeItemModel extends Equatable {
  WrapperThreeItemModel({this.australiaOne, this.australiaTwo, this.id}) {
    australiaOne = australiaOne ?? ImageConstant.imgImage;
    australiaTwo = australiaTwo ?? "         Australia";
    id = id ?? "";
  }

  String? australiaOne;

  String? australiaTwo;

  String? id;

  WrapperThreeItemModel copyWith({
    String? australiaOne,
    String? australiaTwo,
    String? id,
  }) {
    return WrapperThreeItemModel(
      australiaOne: australiaOne ?? this.australiaOne,
      australiaTwo: australiaTwo ?? this.australiaTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [australiaOne, australiaTwo, id];
}
