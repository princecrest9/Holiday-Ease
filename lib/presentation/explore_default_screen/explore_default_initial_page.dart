import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/explore_default_bloc.dart';
import 'models/explore_default_initial_model.dart';
import 'models/favoriteslider_item_model.dart';
import 'widgets/favoriteslider_item_widget.dart';

class ExploreDefaultInitialPage extends StatefulWidget {
  const ExploreDefaultInitialPage({Key? key})
      : super(
          key: key,
        );

  @override
  ExploreDefaultInitialPageState createState() =>
      ExploreDefaultInitialPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreDefaultBloc>(
      create: (context) => ExploreDefaultBloc(ExploreDefaultState(
        exploreDefaultInitialModelObj: ExploreDefaultInitialModel(),
      ))
        ..add(ExploreDefaultInitialEvent()),
      child: ExploreDefaultInitialPage(),
    );
  }
}

class ExploreDefaultInitialPageState extends State<ExploreDefaultInitialPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildCategorySection(context),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              height: 806.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildFavoriteSlider(context),
                  Container(
                    width: 334.h,
                    padding: EdgeInsets.symmetric(horizontal: 4.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 12.h,
                          child: AnimatedSmoothIndicator(
                            activeIndex: 0,
                            count: 4,
                            effect: ScrollingDotsEffect(
                              spacing: 6,
                              activeDotColor:
                                  theme.colorScheme.onSecondaryContainer,
                              dotColor: theme.colorScheme.onSecondaryContainer
                                  .withOpacity(0.49),
                              dotHeight: 6.h,
                              dotWidth: 6.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 164.h),
                        _buildUserSection(context)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCategorySection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            height: 56.h,
            centerTitle: true,
            title: BlocSelector<ExploreDefaultBloc, ExploreDefaultState,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return AppbarTitleSearchview(
                  hintText: "lbl_new_castle_nsw".tr,
                  controller: searchController,
                );
              },
            ),
            styleType: Style.bgOutline,
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 12.h,
              right: 8.h,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCar,
                            height: 32.h,
                            width: 32.h,
                            margin: EdgeInsets.only(left: 4.h),
                          ),
                          Text(
                            "lbl_rooms".tr,
                            style: theme.textTheme.labelLarge,
                          )
                        ],
                      ),
                      Container(
                        width: 64.h,
                        margin: EdgeInsets.only(left: 16.h),
                        padding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 10.h),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: theme.colorScheme.primary,
                              width: 2.h,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIconsetCabin,
                              height: 32.h,
                              width: double.maxFinite,
                              margin: EdgeInsets.symmetric(horizontal: 4.h),
                            ),
                            Text(
                              "lbl_rooms".tr,
                              style: CustomTextStyles.labelLargePrimary,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 170.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 44.h),
                                    child: CustomIconButton(
                                      height: 32.h,
                                      width: 32.h,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgTelevision,
                                      ),
                                    ),
                                  ),
                                  CustomIconButton(
                                    height: 32.h,
                                    width: 32.h,
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgIconsetBeachfront,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "lbl_amazing_views".tr,
                              style: theme.textTheme.labelLarge,
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            bottom: 12.h,
                          ),
                          child: Text(
                            "lbl_beachfront".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFavoriteSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: BlocBuilder<ExploreDefaultBloc, ExploreDefaultState>(
        builder: (context, state) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 446.h,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                context
                    .read<ExploreDefaultBloc>()
                    .add(ChangeSliderIndexEvent(value: index));
              },
            ),
            itemCount: state.exploreDefaultInitialModelObj
                    ?.favoritesliderItemList.length ??
                0,
            itemBuilder: (context, index, realIndex) {
              FavoritesliderItemModel model = state
                      .exploreDefaultInitialModelObj
                      ?.favoritesliderItemList[index] ??
                  FavoritesliderItemModel();
              return FavoritesliderItemWidget(
                model,
                onTapImgImageoneone: () {
                  onTapImgImageoneone(context);
                },
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
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
                imagePath: ImageConstant.imgImage02,
                height: 326.h,
                width: double.maxFinite,
              ),
              IntrinsicHeight(
                child: Container(
                  height: 302.h,
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 72.h,
                        width: 64.h,
                        margin: EdgeInsets.only(top: 230.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.customBorderLR8,
                          gradient: LinearGradient(
                            begin: Alignment(0, 0.5),
                            end: Alignment(1, 0.5),
                            colors: [
                              appTheme.gray20001,
                              appTheme.gray20001,
                              appTheme.gray20001
                            ],
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage40x40,
                              height: 40.h,
                              width: 40.h,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 38,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 12.h,
                        width: 48.h,
                      ),
                      Spacer(
                        flex: 61,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                        height: 24.h,
                        width: 24.h,
                        alignment: Alignment.topCenter,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the exploreStaysStartDateScreen when the action is triggered.
  onTapImgImageoneone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exploreStaysStartDateScreen,
    );
  }
}
