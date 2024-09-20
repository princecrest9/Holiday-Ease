import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/explore_stays_start_date_bloc.dart';
import 'models/explore_stays_start_date_model.dart';
import 'models/griddates_item_model.dart';
import 'widgets/griddates_item_widget.dart';

class ExploreStaysStartDateScreen extends StatelessWidget {
  const ExploreStaysStartDateScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreStaysStartDateBloc>(
      create: (context) => ExploreStaysStartDateBloc(ExploreStaysStartDateState(
        exploreStaysStartDateModelObj: ExploreStaysStartDateModel(),
      ))
        ..add(ExploreStaysStartDateInitialEvent()),
      child: ExploreStaysStartDateScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildTopNavigation(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 14.h,
                top: 34.h,
                right: 14.h,
              ),
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_s".tr,
                          style: CustomTextStyles.titleSmallGray600Medium,
                        ),
                        Text(
                          "lbl_m".tr,
                          style: CustomTextStyles.titleSmallGray600Medium,
                        ),
                        Text(
                          "lbl_t".tr,
                          style: CustomTextStyles.titleSmallGray600Medium,
                        ),
                        Text(
                          "lbl_w".tr,
                          style: CustomTextStyles.titleSmallGray600Medium,
                        ),
                        Text(
                          "lbl_t".tr,
                          style: CustomTextStyles.titleSmallGray600Medium,
                        ),
                        Text(
                          "lbl_f".tr,
                          style: CustomTextStyles.titleSmallGray600Medium,
                        ),
                        Text(
                          "lbl_s".tr,
                          style: CustomTextStyles.titleSmallGray600Medium,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 26.h),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Column(
                      children: [
                        _buildRowWrapper(context),
                        SizedBox(height: 4.h),
                        _buildGridDates(context),
                        SizedBox(height: 40.h),
                        _buildCalendarView(context)
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomWrapper(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildTopNavigation(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgClosePrimarycontainer,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 10.h,
          bottom: 10.h,
        ),
        onTap: () {
          onTapCloseone(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_choose_a_start_date".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildButtonFour(BuildContext context) {
    return CustomElevatedButton(
      height: 40.h,
      width: 40.h,
      text: "lbl_4".tr,
      buttonStyle: CustomButtonStyles.fillOnSecondaryContainer,
      buttonTextStyle: CustomTextStyles.titleSmallGray600,
    );
  }

  /// Section Widget
  Widget _buildButtonFive(BuildContext context) {
    return CustomElevatedButton(
      height: 40.h,
      width: 40.h,
      text: "lbl_5".tr,
      margin: EdgeInsets.only(left: 6.h),
      buttonStyle: CustomButtonStyles.fillOnSecondaryContainer,
      buttonTextStyle: CustomTextStyles.titleSmallGray600,
    );
  }

  /// Section Widget
  Widget _buildRowWrapper(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildButtonFour(context),
          _buildButtonFive(context),
          Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: Text(
              "lbl_6".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(
            flex: 25,
          ),
          Text(
            "lbl_7".tr,
            style: theme.textTheme.titleSmall,
          ),
          Spacer(
            flex: 25,
          ),
          Text(
            "lbl_8".tr,
            style: theme.textTheme.titleSmall,
          ),
          Spacer(
            flex: 25,
          ),
          Text(
            "lbl_9".tr,
            style: theme.textTheme.titleSmall,
          ),
          Spacer(
            flex: 23,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: Text(
              "lbl_10".tr,
              style: theme.textTheme.titleSmall,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGridDates(BuildContext context) {
    return BlocSelector<ExploreStaysStartDateBloc, ExploreStaysStartDateState,
        ExploreStaysStartDateModel?>(
      selector: (state) => state.exploreStaysStartDateModelObj,
      builder: (context, exploreStaysStartDateModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 19.h,
            crossAxisCount: 7,
            mainAxisSpacing: 4.h,
            crossAxisSpacing: 6.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              exploreStaysStartDateModelObj?.griddatesItemList.length ?? 0,
          itemBuilder: (context, index) {
            GriddatesItemModel model =
                exploreStaysStartDateModelObj?.griddatesItemList[index] ??
                    GriddatesItemModel();
            return GriddatesItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCalendarView(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocBuilder<ExploreStaysStartDateBloc, ExploreStaysStartDateState>(
        builder: (context, state) {
          return SizedBox(
            height: 298.h,
            width: 326.h,
            child: CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.multi,
                firstDate: DateTime(DateTime.now().year - 5),
                lastDate: DateTime(DateTime.now().year + 5),
                selectedDayHighlightColor: Color(0XFFFFFFFF),
                firstDayOfWeek: 0,
                selectedDayTextStyle: TextStyle(
                  color: Color(0XFF000000),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
                disabledDayTextStyle: TextStyle(
                  color: theme.colorScheme.primary,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              value: state.selectedDatesFromCalendar ?? [],
              onValueChanged: (dates) {
                state.selectedDatesFromCalendar = dates;
              },
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_apply".tr,
    );
  }

  /// Section Widget
  Widget _buildBottomWrapper(BuildContext context) {
    return Container(
      height: 88.h,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.h,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        border: Border(
          top: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [_buildApplyButton(context)],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapCloseone(BuildContext context) {
    NavigatorService.goBack();
  }
}
