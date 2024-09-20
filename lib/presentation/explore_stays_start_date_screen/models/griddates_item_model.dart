import 'package:equatable/equatable.dart';

/// This class is used in the [griddates_item_widget] screen.

// ignore_for_file: must_be_immutable
class GriddatesItemModel extends Equatable {
  GriddatesItemModel({this.eleven, this.id}) {
    eleven = eleven ?? "11";
    id = id ?? "";
  }

  String? eleven;

  String? id;

  GriddatesItemModel copyWith({
    String? eleven,
    String? id,
  }) {
    return GriddatesItemModel(
      eleven: eleven ?? this.eleven,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [eleven, id];
}
