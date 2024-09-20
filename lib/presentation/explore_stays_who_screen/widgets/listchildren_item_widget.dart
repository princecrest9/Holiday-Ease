import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../bloc/explore_stays_who_bloc.dart';
import '../models/listchildren_item_model.dart';

// ignore_for_file: must_be_immutable
class ListchildrenItemWidget extends StatelessWidget {
  ListchildrenItemWidget(this.listchildrenItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListchildrenItemModel listchildrenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listchildrenItemModelObj.children!,
                      style: theme.textTheme.bodyLarge,
                    ),
                    Text(
                      listchildrenItemModelObj.ages2twelve!,
                      style: theme.textTheme.bodySmall,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<ExploreStaysWhoBloc>().add(
                            DecrementQuantity1Event(
                                listchildrenItemModelObj:
                                    listchildrenItemModelObj));
                      },
                      child: Container(
                        height: 32.h,
                        width: 32.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onSecondaryContainer,
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                          border: Border.all(
                            color: appTheme.gray300,
                            width: 1.h,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIconsetMinus,
                              height: 24.h,
                              width: 24.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        (listchildrenItemModelObj.quantity!).toString(),
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<ExploreStaysWhoBloc>().add(
                            IncrementQuantity1Event(
                                listchildrenItemModelObj:
                                    listchildrenItemModelObj));
                      },
                      child: Container(
                        height: 32.h,
                        width: 32.h,
                        margin: EdgeInsets.only(left: 14.h),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onSecondaryContainer,
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                          border: Border.all(
                            color: appTheme.gray300,
                            width: 1.h,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 24.h,
                              width: 24.h,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          width: double.maxFinite,
          child: Divider(),
        )
      ],
    );
  }
}
