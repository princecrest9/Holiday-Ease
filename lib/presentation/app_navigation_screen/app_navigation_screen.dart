import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../explore_map_location_dialog/explore_map_location_dialog.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Text(
                            "App Navigation",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 20.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Check your app's UI from the below demo screens of your app.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF888888),
                              fontSize: 16.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Divider(
                          height: 1.h,
                          thickness: 1.h,
                          color: Color(0XFF000000),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Log in or sign up / Email / Default",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.logInOrSignUpEmailDefaultScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Log in or sign up / Email / Keyboard",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.logInOrSignUpEmailKeyboardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Agree and Continue",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.agreeAndContinueScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore / Stays / Where to",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.exploreStaysWhereToScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore / Default",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.exploreDefaultScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore / Stays / Start Date",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.exploreStaysStartDateScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore / Stays / Who",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.exploreStaysWhoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore / Map / Location - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(context,
                                  ExploreMapLocationDialog.builder(context)),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
