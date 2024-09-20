import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'bloc/explore_default_bloc.dart';
import 'explore_default_initial_page.dart';
import 'models/explore_default_model.dart';

// ignore_for_file: must_be_immutable
class ExploreDefaultScreen extends StatelessWidget {
  ExploreDefaultScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreDefaultBloc>(
      create: (context) => ExploreDefaultBloc(ExploreDefaultState(
        exploreDefaultModelObj: ExploreDefaultModel(),
      ))
        ..add(ExploreDefaultInitialEvent()),
      child: ExploreDefaultScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.exploreDefaultInitialPage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) =>
                getCurrentPage(context, routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              navigatorKey.currentContext!, getCurrentRoute(type));
        },
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Explore:
        return AppRoutes.exploreDefaultInitialPage;
      case BottomBarEnum.Wishlist:
        return "/";
      case BottomBarEnum.Inbox:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.exploreDefaultInitialPage:
        return ExploreDefaultInitialPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
