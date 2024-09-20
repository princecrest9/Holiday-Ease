import 'package:equatable/equatable.dart';

/// This class is used in the [listchildren_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListchildrenItemModel extends Equatable {
  ListchildrenItemModel(
      {this.children, this.ages2twelve, this.quantity, this.id}) {
    children = children ?? "Adults";
    ages2twelve = ages2twelve ?? "Ages 13 or above";
    quantity = quantity ?? 1;
    id = id ?? "";
  }

  String? children;

  String? ages2twelve;

  int? quantity;

  String? id;

  ListchildrenItemModel copyWith({
    String? children,
    String? ages2twelve,
    int? quantity,
    String? id,
  }) {
    return ListchildrenItemModel(
      children: children ?? this.children,
      ages2twelve: ages2twelve ?? this.ages2twelve,
      quantity: quantity ?? this.quantity,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [children, ages2twelve, quantity, id];
}
