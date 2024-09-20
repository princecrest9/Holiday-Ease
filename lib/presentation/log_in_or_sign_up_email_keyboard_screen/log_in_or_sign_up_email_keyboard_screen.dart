import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/log_in_or_sign_up_email_keyboard_bloc.dart';
import 'models/log_in_or_sign_up_email_keyboard_model.dart';

class LogInOrSignUpEmailKeyboardScreen extends StatelessWidget {
  const LogInOrSignUpEmailKeyboardScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInOrSignUpEmailKeyboardBloc>(
      create: (context) =>
          LogInOrSignUpEmailKeyboardBloc(LogInOrSignUpEmailKeyboardState(
        logInOrSignUpEmailKeyboardModelObj: LogInOrSignUpEmailKeyboardModel(),
      ))
            ..add(LogInOrSignUpEmailKeyboardInitialEvent()),
      child: LogInOrSignUpEmailKeyboardScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 14.h,
            top: 56.h,
            right: 14.h,
          ),
          child: Column(
            children: [
              _buildEmailField(context),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
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
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: BlocSelector<LogInOrSignUpEmailKeyboardBloc,
          LogInOrSignUpEmailKeyboardState, TextEditingController?>(
        selector: (state) => state.emailFieldController,
        builder: (context, emailFieldController) {
          return CustomFloatingTextField(
            controller: emailFieldController,
            labelText: "lbl_email".tr,
            labelStyle: theme.textTheme.bodyLarge!,
            hintText: "lbl_email".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.h,
            ),
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
}
