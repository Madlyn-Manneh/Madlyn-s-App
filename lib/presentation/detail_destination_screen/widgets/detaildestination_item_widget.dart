import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class DetaildestinationItemWidget extends StatelessWidget {
  const DetaildestinationItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle57,
        height: 64.v,
        width: 58.h,
        radius: BorderRadius.circular(
          4.h,
        ),
      ),
    );
  }
}
