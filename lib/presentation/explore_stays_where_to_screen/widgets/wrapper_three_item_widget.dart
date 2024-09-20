import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/wrapper_three_item_model.dart';

// ignore_for_file: must_be_immutable
class WrapperThreeItemWidget extends StatelessWidget {
  WrapperThreeItemWidget(this.wrapperThreeItemModelObj, {Key? key})
      : super(
          key: key,
        );

  WrapperThreeItemModel wrapperThreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: wrapperThreeItemModelObj.australiaOne!,
            height: 124.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            wrapperThreeItemModelObj.australiaTwo!,
            style: theme.textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
