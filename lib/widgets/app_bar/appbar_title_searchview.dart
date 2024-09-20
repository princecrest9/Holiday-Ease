import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_search_view.dart';

class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({Key? key, this.hintText, this.controller, this.margin})
      : super(
          key: key,
        );

  final String? hintText;

  final TextEditingController? controller;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
        width: double.maxFinite,
        child: CustomSearchView(
          controller: controller,
          hintText: "lbl_new_castle_nsw".tr,
          contentPadding: EdgeInsets.fromLTRB(16.h, 16.h, 20.h, 16.h),
          borderDecoration: SearchViewStyleHelper.outlineGrayTL20,
        ),
      ),
    );
  }
}
