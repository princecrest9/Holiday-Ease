import 'package:equatable/equatable.dart';

/// This class is used in the [favoriteslider_item_widget] screen.

// ignore_for_file: must_be_immutable
class FavoritesliderItemModel extends Equatable {
  FavoritesliderItemModel({this.id}) {
    id = id ?? "";
  }

  String? id;

  FavoritesliderItemModel copyWith({String? id}) {
    return FavoritesliderItemModel(
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [id];
}
