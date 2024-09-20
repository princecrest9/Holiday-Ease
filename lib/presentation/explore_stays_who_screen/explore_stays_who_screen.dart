import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../explore_map_location_dialog/explore_map_location_dialog.dart';
import 'bloc/explore_stays_who_bloc.dart';
import 'models/explore_stays_who_model.dart';
import 'models/listchildren_item_model.dart';
import 'widgets/listchildren_item_widget.dart';

// ignore_for_file: must_be_immutable
class ExploreStaysWhoScreen extends StatelessWidget {
  ExploreStaysWhoScreen({Key? key})
      : super(
          key: key,
        );

  late TabController tabviewController;

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreStaysWhoBloc>(
      create: (context) => ExploreStaysWhoBloc(ExploreStaysWhoState(
        exploreStaysWhoModelObj: ExploreStaysWhoModel(),
      ))
        ..add(ExploreStaysWhoInitialEvent()),
      child: ExploreStaysWhoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 14.h,
            top: 56.h,
            right: 14.h,
          ),
          child: Column(
            children: [
              _buildHeaderSection(context),
              SizedBox(height: 542.h),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildDateSearch(
                        context,
                        eventTitle: "lbl_where".tr,
                        eventDateRange: "msg_gold_coast_australia".tr,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildDateSearch(
                        context,
                        eventTitle: "lbl_when".tr,
                        eventDateRange: "lbl_dec_2_dec_5".tr,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    _buildGuestDetails(context)
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildActionButtons(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 32.h,
            width: 32.h,
            padding: EdgeInsets.all(4.h),
            onTap: () {
              onTapBtnCloseone(context);
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgClose,
            ),
          ),
          Expanded(
            child: SizedBox(
              child: TabBar(
                controller: tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: theme.colorScheme.primary,
                labelStyle: TextStyle(
                  fontSize: 16.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelColor: appTheme.gray600,
                unselectedLabelStyle: TextStyle(
                  fontSize: 16.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: theme.colorScheme.primary,
                      width: 2.h,
                    ),
                  ),
                ),
                dividerHeight: 0.0,
                tabs: [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.h),
                      child: Text(
                        "lbl_stays".tr,
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.h),
                      child: Text(
                        "lbl_experiences".tr,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGuestDetails(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 16.h,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        borderRadius: BorderRadiusStyle.roundedBorder24,
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.h),
          Text(
            "lbl_who_s_coming2".tr,
            style: theme.textTheme.headlineMedium,
          ),
          SizedBox(height: 40.h),
          BlocSelector<ExploreStaysWhoBloc, ExploreStaysWhoState,
              ExploreStaysWhoModel?>(
            selector: (state) => state.exploreStaysWhoModelObj,
            builder: (context, exploreStaysWhoModelObj) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 14.h,
                  );
                },
                itemCount:
                    exploreStaysWhoModelObj?.listchildrenItemList.length ?? 0,
                itemBuilder: (context, index) {
                  ListchildrenItemModel model =
                      exploreStaysWhoModelObj?.listchildrenItemList[index] ??
                          ListchildrenItemModel();
                  return ListchildrenItemWidget(
                    model,
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActionButtons(BuildContext context) {
    return Container(
      height: 88.h,
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
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                bottom: 14.h,
              ),
              child: Text(
                "lbl_clear_all".tr,
                style: CustomTextStyles.titleMediumBold_1.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          CustomElevatedButton(
            width: 134.h,
            text: "lbl_search".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSearchOnsecondarycontainer,
                height: 24.h,
                width: 24.h,
                fit: BoxFit.contain,
              ),
            ),
            onPressed: () {
              onTapSearchtwo(context);
            },
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDateSearch(
    BuildContext context, {
    required String eventTitle,
    required String eventDateRange,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 22.h,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        borderRadius: BorderRadiusStyle.roundedBorder24,
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            eventTitle,
            style: CustomTextStyles.titleSmallGray600Medium.copyWith(
              color: appTheme.gray600,
            ),
          ),
          Text(
            eventDateRange,
            style: CustomTextStyles.titleSmallMedium_2.copyWith(
              color: theme.colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapBtnCloseone(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Displays a dialog with the [ExploreMapLocationDialog] content.
  onTapSearchtwo(BuildContext context) {
    showDialog(
        context: NavigatorService.navigatorKey.currentContext!,
        builder: (_) => AlertDialog(
              content: ExploreMapLocationDialog.builder(
                  NavigatorService.navigatorKey.currentContext!),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
            ));
  }
}
