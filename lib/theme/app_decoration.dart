import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
// Gradient decorations
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [appTheme.gray20001, appTheme.gray20001, appTheme.gray20001],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
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
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray2001 => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        border: Border(
          top: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray3001 => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray3002 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray3003 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineLightBlue => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        border: Border(
          top: BorderSide(
            color: appTheme.lightBlue400,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.onSecondaryContainer,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
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
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.primary,
            width: 2.h,
          ),
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
// Custom borders
  static BorderRadius get customBorderLR8 => BorderRadius.only(
        topLeft: Radius.circular(4.h),
        topRight: Radius.circular(8.h),
        bottomLeft: Radius.circular(4.h),
        bottomRight: Radius.circular(8.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}
