import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  List<String> items;

  Function(String) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 124.h,
        icon: Container(
          margin: EdgeInsets.only(left: 6.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgExpandmoreblack24dp1,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        hintText: "Asia, Indonesia",
        items: items,
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}
