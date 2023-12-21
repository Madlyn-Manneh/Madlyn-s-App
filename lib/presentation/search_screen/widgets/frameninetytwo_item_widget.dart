import 'package:flutter/material.dart' hide SearchController;
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FrameninetytwoItemWidget extends StatelessWidget {
  const FrameninetytwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgExploreBlack24dp,
              ),
            ),
            SizedBox(height: 11.v),
            Text(
              "Explore",
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
