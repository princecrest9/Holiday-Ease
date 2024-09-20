import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: double.maxFinite,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: theme.colorScheme.onSecondaryContainer,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgHome,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(14.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 16.h),
                    _buildHolidaySection(context)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildHolidaySection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              onTapTxtHolidayeaseone(context);
            },
            child: Text(
              "lbl_holiday_ease".tr,
              style: theme.textTheme.displayMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the logInOrSignUpEmailDefaultScreen when the action is triggered.
  onTapTxtHolidayeaseone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInOrSignUpEmailDefaultScreen,
    );
  }
}
