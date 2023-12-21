import 'package:flutter/material.dart' hide SearchController;
import 'package:madlyn_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle453,
            height: 44.v,
            width: 56.h,
            radius: BorderRadius.circular(
              6.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kepulauan Raja Ampat",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Papua Barat",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgPinDropBlack24dp,
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 16.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 12.v,
              bottom: 13.v,
            ),
            child: Text(
              "100 Place",
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
