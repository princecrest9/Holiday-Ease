import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/log_in_or_sign_up_email_default_bloc.dart';
import 'models/log_in_or_sign_up_email_default_model.dart';

class LogInOrSignUpEmailDefaultScreen extends StatelessWidget {
  const LogInOrSignUpEmailDefaultScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInOrSignUpEmailDefaultBloc>(
      create: (context) =>
          LogInOrSignUpEmailDefaultBloc(LogInOrSignUpEmailDefaultState(
        logInOrSignUpEmailDefaultModelObj: LogInOrSignUpEmailDefaultModel(),
      ))
            ..add(LogInOrSignUpEmailDefaultInitialEvent()),
      child: LogInOrSignUpEmailDefaultScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildTopNavigation(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 14.h,
            top: 56.h,
            right: 14.h,
          ),
          child: Column(
            children: [
              _buildEmailInput(context),
              SizedBox(height: 32.h),
              _buildContinueButton(context),
              SizedBox(height: 48.h),
              _buildDividerRow(context),
              SizedBox(height: 30.h),
              _buildPhoneButton(context),
              SizedBox(height: 16.h),
              _buildAppleButton(context),
              SizedBox(height: 16.h),
              _buildGoogleButton(context),
              SizedBox(height: 16.h),
              _buildFacebookButton(context),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildTopNavigation(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgClose,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.h,
          bottom: 10.h,
        ),
        onTap: () {
          onTapCloseone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_log_in_or_sign_up".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: BlocSelector<LogInOrSignUpEmailDefaultBloc,
          LogInOrSignUpEmailDefaultState, TextEditingController?>(
        selector: (state) => state.emailInputController,
        builder: (context, emailInputController) {
          return CustomTextFormField(
            controller: emailInputController,
            hintText: "lbl_email".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.all(16.h),
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email";
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_continue".tr,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      buttonStyle: CustomButtonStyles.fillLightBlueA,
      buttonTextStyle: CustomTextStyles.titleMediumGray10001,
      onPressed: () {
        onTapContinueButton(context);
      },
    );
  }

  /// Section Widget
  Widget _buildDividerRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Divider(),
            ),
          ),
          SizedBox(width: 18.h),
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_or".tr,
              style: CustomTextStyles.titleSmallGray600,
            ),
          ),
          SizedBox(width: 18.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Divider(),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_continue_with_phone".tr,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
    );
  }

  /// Section Widget
  Widget _buildAppleButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_continue_with_apple".tr,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
    );
  }

  /// Section Widget
  Widget _buildGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_continue_with_google".tr,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
    );
  }

  /// Section Widget
  Widget _buildFacebookButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_continue_with_facebook".tr,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
    );
  }

  /// Navigates to the previous screen.
  onTapCloseone(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the logInOrSignUpEmailKeyboardScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInOrSignUpEmailKeyboardScreen,
    );
  }
}
