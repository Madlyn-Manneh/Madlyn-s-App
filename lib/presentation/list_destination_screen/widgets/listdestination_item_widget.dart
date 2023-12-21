import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListdestinationItemWidget extends StatelessWidget {
  const ListdestinationItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle56,
          height: 97.v,
          width: 93.h,
          radius: BorderRadius.circular(
            8.h,
          ),
          margin: EdgeInsets.only(
            top: 1.v,
            bottom: 4.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGeneralRateFull,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "4.5/5.0 ",
                            style: theme.textTheme.bodyMedium,
                          ),
                          TextSpan(
                            text: "(36.000)",
                            style: CustomTextStyles.bodyMediumBluegray400_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11.v),
              Text(
                "Raja Ampat",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 230.h,
                child: Text(
                  "Library device clip strikethrough move. Flows vector overflow style invite.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.83,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
