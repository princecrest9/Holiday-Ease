import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/explore_stays_where_to_bloc.dart';
import 'models/scrollview_tab_model.dart';
import 'models/wrapper_three_item_model.dart';
import 'widgets/wrapper_three_item_widget.dart';

class ScrollviewTabPage extends StatefulWidget {
  const ScrollviewTabPage({Key? key})
      : super(
          key: key,
        );

  @override
  ScrollviewTabPageState createState() => ScrollviewTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreStaysWhereToBloc>(
      create: (context) => ExploreStaysWhereToBloc(ExploreStaysWhereToState(
        scrollviewTabModelObj: ScrollviewTabModel(),
      ))
        ..add(ExploreStaysWhereToInitialEvent()),
      child: ScrollviewTabPage(),
    );
  }
}

class ScrollviewTabPageState extends State<ScrollviewTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(
          children: [
            _buildSearchSection(context),
            SizedBox(height: 24.h),
            _buildTripInfoColumn(context)
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildGuestInfoRow(
    BuildContext context, {
    required String titleText,
    required String addGuestsText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 22.h,
      ),
      decoration: BoxDecoration(
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
            titleText,
            style: CustomTextStyles.titleSmallGray600Medium.copyWith(
              color: appTheme.gray600,
            ),
          ),
          Text(
            addGuestsText,
            style: CustomTextStyles.titleSmallMedium_2.copyWith(
              color: theme.colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 22.h),
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
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              "lbl_where_to".tr,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: BlocSelector<ExploreStaysWhereToBloc,
                ExploreStaysWhereToState, TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "lbl_new_castle_nsw".tr,
                  contentPadding: EdgeInsets.fromLTRB(16.h, 16.h, 20.h, 16.h),
                );
              },
            ),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 152.h,
            width: 302.h,
            child: BlocSelector<ExploreStaysWhereToBloc,
                ExploreStaysWhereToState, ScrollviewTabModel?>(
              selector: (state) => state.scrollviewTabModelObj,
              builder: (context, scrollviewTabModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 24.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 16.h,
                    );
                  },
                  itemCount:
                      scrollviewTabModelObj?.wrapperThreeItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    WrapperThreeItemModel model =
                        scrollviewTabModelObj?.wrapperThreeItemList[index] ??
                            WrapperThreeItemModel();
                    return WrapperThreeItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTripInfoColumn(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildGuestInfoRow(
              context,
              titleText: "msg_when_is_your_trip".tr,
              addGuestsText: "lbl_any_week".tr,
            ),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildGuestInfoRow(
              context,
              titleText: "lbl_who_s_coming".tr,
              addGuestsText: "lbl_add_guests".tr,
            ),
          )
        ],
      ),
    );
  }
}
