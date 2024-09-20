import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum Style { bgOutline, bgFill }

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions})
      : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 44.h,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 44.h,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgOutline:
        return Container(
          height: 56.h,
          width: 348.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.onSecondaryContainer,
            borderRadius: BorderRadius.circular(
              28.h,
            ),
            border: Border.all(
              color: appTheme.gray200,
              width: 1.h,
              strokeAlign: BorderSide.strokeAlignCenter,
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.gray300,
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  0,
                ),
              )
            ],
          ),
        );
      case Style.bgFill:
        return Container(
          height: 44.h,
          width: 374.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
          ),
        );
      default:
        return null;
    }
  }
}
