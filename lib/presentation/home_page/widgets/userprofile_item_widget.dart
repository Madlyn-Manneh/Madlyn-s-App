import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({
    Key? key,
    this.onTapImgRating,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgRating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 248.v,
            width: 200.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBeach3,
                  height: 248.v,
                  width: 200.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgRating!.call();
                  },
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(12.h),
                    decoration:
                        AppDecoration.gradientBlueGrayToBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          decoration:
                              IconButtonStyleHelper.fillOnPrimaryContainer,
                          alignment: Alignment.centerRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSocialConnection,
                          ),
                        ),
                        SizedBox(height: 172.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
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
                                        style: CustomTextStyles
                                            .bodyMediumOnPrimaryContainer_1,
                                      ),
                                      TextSpan(
                                        text: "(40.000)",
                                        style: CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3.v),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "Name Of Destination",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 15.v),
          SizedBox(
            width: 185.h,
            child: Text(
              "Outline project component link content stroke group. Flatten community library.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.83,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            "Start from 5 / day",
            style: CustomTextStyles.labelLarge12,
          ),
        ],
      ),
    );
  }
}
