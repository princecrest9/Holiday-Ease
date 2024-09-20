import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/agree_and_continue_bloc.dart';
import 'models/agree_and_continue_model.dart';

class AgreeAndContinueScreen extends StatelessWidget {
  const AgreeAndContinueScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AgreeAndContinueBloc>(
      create: (context) => AgreeAndContinueBloc(AgreeAndContinueState(
        agreeAndContinueModelObj: AgreeAndContinueModel(),
      ))
        ..add(AgreeAndContinueInitialEvent()),
      child: AgreeAndContinueScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgreeAndContinueBloc, AgreeAndContinueState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 22.h),
              child: Column(
                children: [
                  _buildTopNavigation(context),
                  SizedBox(height: 26.h),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 14.h),
                    child: Column(
                      children: [
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_our".tr,
                                      style: CustomTextStyles.titleSmallMedium,
                                    ),
                                    TextSpan(
                                      text: "msg_community_commitment".tr,
                                      style: CustomTextStyles.bodyMediumPrimary,
                                    )
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 18.h),
                              Text(
                                "msg_holiday_ease_is".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.titleMediumBold.copyWith(
                                  height: 1.67,
                                ),
                              ),
                              SizedBox(height: 14.h),
                              Text(
                                "msg_to_ensure_this".tr,
                                maxLines: 9,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyLarge_1.copyWith(
                                  height: 1.50,
                                ),
                              ),
                              SizedBox(height: 16.h),
                              Text(
                                "lbl_learn_more".tr,
                                style: theme.textTheme.titleMedium!.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              SizedBox(height: 30.h),
                              CustomElevatedButton(
                                text: "msg_agree_and_continue".tr,
                              ),
                              SizedBox(height: 16.h),
                              CustomOutlinedButton(
                                height: 56.h,
                                text: "lbl_decline".tr,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTopNavigation(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            decoration: BoxDecoration(
              color: appTheme.gray100,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Text(
                        "lbl_holiday_ease".tr,
                        style: theme.textTheme.headlineLarge,
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
}
