import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL20,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowsArrowLeft2,
          ),
        ),
      ),
    );
  }
}
