import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/explore_map_location_bloc.dart';
import 'models/explore_map_location_model.dart'; // ignore_for_file: must_be_immutable

class ExploreMapLocationDialog extends StatelessWidget {
  const ExploreMapLocationDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreMapLocationBloc>(
      create: (context) => ExploreMapLocationBloc(ExploreMapLocationState(
        exploreMapLocationModelObj: ExploreMapLocationModel(),
      ))
        ..add(ExploreMapLocationInitialEvent()),
      child: ExploreMapLocationDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onSecondaryContainer,
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildHeaderWrapper(context),
              SizedBox(height: 36.h),
              CustomIconButton(
                height: 72.h,
                width: 72.h,
                padding: EdgeInsets.all(12.h),
                decoration: IconButtonStyleHelper.fillLightBlue,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSave,
                ),
              ),
              SizedBox(height: 36.h),
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  "msg_to_center_the_map".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLarge18.copyWith(
                    height: 1.44,
                  ),
                ),
              ),
              SizedBox(height: 36.h),
              _buildButtonWrapper(context)
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildHeaderWrapper(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24.h, 16.h, 24.h, 14.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 24.h,
            width: 24.h,
            onTap: () {
              onTapImgCloseone(context);
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 72.h),
            child: Text(
              "lbl_your_location".tr,
              style: theme.textTheme.titleMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonWrapper(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 14.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      ),
      child: Column(
        children: [
          CustomElevatedButton(
            text: "lbl_go_to_settings".tr,
          ),
          SizedBox(height: 26.h),
          Text(
            "lbl_no_thanks".tr,
            style: CustomTextStyles.titleMediumBold_1.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(height: 14.h)
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapImgCloseone(BuildContext context) {
    NavigatorService.goBack();
  }
}
