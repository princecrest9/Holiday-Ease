import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/griddates_item_model.dart';

// ignore_for_file: must_be_immutable
class GriddatesItemWidget extends StatelessWidget {
  GriddatesItemWidget(this.griddatesItemModelObj, {Key? key})
      : super(
          key: key,
        );

  GriddatesItemModel griddatesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Text(
      griddatesItemModelObj.eleven!,
      style: theme.textTheme.titleSmall,
    );
  }
}
