import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/favoriteslider_item_model.dart';

// ignore_for_file: must_be_immutable
class FavoritesliderItemWidget extends StatelessWidget {
  FavoritesliderItemWidget(this.favoritesliderItemModelObj,
      {Key? key, this.onTapImgImageoneone})
      : super(
          key: key,
        );

  FavoritesliderItemModel favoritesliderItemModelObj;

  VoidCallback? onTapImgImageoneone;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.only(left: 4.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Container(
                  height: 326.h,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage01,
                        height: 326.h,
                        width: double.maxFinite,
                        onTap: () {
                          onTapImgImageoneone?.call();
                        },
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                        height: 24.h,
                        width: 24.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 12.h,
                          right: 16.h,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Align(
              alignment: Alignment.center,
              child: Text(
                "msg_new_castle_nsw".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "lbl_115_miles_away".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            Text(
              "msg_2bhk_sep_2_sep".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.43,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              "lbl_total_950".tr,
              style: theme.textTheme.titleSmall!.copyWith(
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
