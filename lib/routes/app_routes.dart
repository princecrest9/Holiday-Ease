import 'package:flutter/material.dart';
import '../presentation/agree_and_continue_screen/agree_and_continue_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/explore_default_screen/explore_default_screen.dart';
import '../presentation/explore_stays_start_date_screen/explore_stays_start_date_screen.dart';
import '../presentation/explore_stays_where_to_screen/explore_stays_where_to_screen.dart';
import '../presentation/explore_stays_who_screen/explore_stays_who_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/log_in_or_sign_up_email_default_screen/log_in_or_sign_up_email_default_screen.dart';
import '../presentation/log_in_or_sign_up_email_keyboard_screen/log_in_or_sign_up_email_keyboard_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String logInOrSignUpEmailDefaultScreen =
      '/log_in_or_sign_up_email_default_screen';

  static const String logInOrSignUpEmailKeyboardScreen =
      '/log_in_or_sign_up_email_keyboard_screen';

  static const String agreeAndContinueScreen = '/agree_and_continue_screen';

  static const String exploreStaysWhereToScreen =
      '/explore_stays_where_to_screen';

  static const String scrollviewTabPage = '/scrollview_tab_page';

  static const String exploreDefaultScreen = '/explore_default_screen';

  static const String exploreDefaultInitialPage =
      '/explore_default_initial_page';

  static const String exploreStaysStartDateScreen =
      '/explore_stays_start_date_screen';

  static const String exploreStaysWhoScreen = '/explore_stays_who_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeScreen: HomeScreen.builder,
        logInOrSignUpEmailDefaultScreen:
            LogInOrSignUpEmailDefaultScreen.builder,
        logInOrSignUpEmailKeyboardScreen:
            LogInOrSignUpEmailKeyboardScreen.builder,
        agreeAndContinueScreen: AgreeAndContinueScreen.builder,
        exploreStaysWhereToScreen: ExploreStaysWhereToScreen.builder,
        exploreDefaultScreen: ExploreDefaultScreen.builder,
        exploreStaysStartDateScreen: ExploreStaysStartDateScreen.builder,
        exploreStaysWhoScreen: ExploreStaysWhoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomeScreen.builder
      };
}
