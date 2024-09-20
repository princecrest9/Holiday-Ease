import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/explore_stays_where_to_bloc.dart';
import 'models/explore_stays_where_to_model.dart';
import 'scrollview_tab_page.dart';

class ExploreStaysWhereToScreen extends StatefulWidget {
  const ExploreStaysWhereToScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ExploreStaysWhereToScreenState createState() =>
      ExploreStaysWhereToScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreStaysWhereToBloc>(
      create: (context) => ExploreStaysWhereToBloc(ExploreStaysWhereToState(
        exploreStaysWhereToModelObj: ExploreStaysWhereToModel(),
      ))
        ..add(ExploreStaysWhereToInitialEvent()),
      child: ExploreStaysWhereToScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class ExploreStaysWhereToScreenState extends State<ExploreStaysWhereToScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildHeaderRow(context),
              SizedBox(height: 24.h),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ScrollviewTabPage.builder(context),
                      ScrollviewTabPage.builder(context)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 4.h)
            ],
          ),
        ),
        bottomNavigationBar: _buildActionRow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderRow(BuildContext context) {
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
  Widget _buildActionRow(BuildContext context) {
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
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapBtnCloseone(BuildContext context) {
    NavigatorService.goBack();
  }
}
