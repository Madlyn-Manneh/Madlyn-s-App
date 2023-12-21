import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ModalConfirmationDialog extends StatelessWidget {
  const ModalConfirmationDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 314.h,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img101,
            height: 130.adaptSize,
            width: 130.adaptSize,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 52.h),
          ),
          SizedBox(height: 4.v),
          Text(
            "Confirmation Order",
            style: CustomTextStyles.titleMediumMedium,
          ),
          SizedBox(height: 8.v),
          Container(
            width: 195.h,
            margin: EdgeInsets.symmetric(horizontal: 27.h),
            child: Text(
              "Nunc aliquet venenatis elit etiam pharetra sem nibh. Nulla.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallSecondaryContainer_1.copyWith(
                height: 1.83,
              ),
            ),
          ),
          SizedBox(height: 25.v),
          CustomElevatedButton(
            height: 54.v,
            text: "Purchase Now",
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToLightBlueDecoration,
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
