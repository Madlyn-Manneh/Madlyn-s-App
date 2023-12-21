import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text(
            "Adult",
            style: CustomTextStyles.bodyMedium14,
          ),
        ),
        Spacer(),
        Container(
          width: 26.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.outlineGray900.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder12,
          ),
          child: Text(
            "-",
            style: CustomTextStyles.bodyMedium14,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 26.h,
            top: 2.v,
            bottom: 2.v,
          ),
          child: Text(
            "2",
            style: CustomTextStyles.bodyMedium14,
          ),
        ),
        Container(
          width: 26.adaptSize,
          margin: EdgeInsets.only(left: 26.h),
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.outlineSecondaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder12,
          ),
          child: Text(
            "+",
            style: CustomTextStyles.bodyMedium14,
          ),
        ),
      ],
    );
  }
}
