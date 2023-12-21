import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onPrimaryContainer,
                appTheme.gray100,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgStatusBar,
                  height: 55.v,
                  width: 414.h,
                ),
                SizedBox(height: 40.v),
                Padding(
                  padding: EdgeInsets.only(left: 37.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRefresh,
                        height: 21.v,
                        width: 26.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text(
                          "Travel Go",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    "Story Of Our Journey",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 14.v),
                _buildStoryOfOurJourney(context),
                SizedBox(height: 26.v),
                Container(
                  width: 326.h,
                  margin: EdgeInsets.only(
                    left: 30.h,
                    right: 57.h,
                  ),
                  child: Text(
                    "Content style export device link duplicate select. Pencil strikethrough figjam auto comment. Opacity rotate shadow star share inspect style. Library device clip strikethrough move. Flows vector overflow style invite scrolling background. Style clip effect union underline. Editor auto bullet select fill select.",
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.83,
                    ),
                  ),
                ),
                SizedBox(height: 29.v),
                _buildWidget(context),
                SizedBox(height: 34.v),
                Container(
                  width: 326.h,
                  margin: EdgeInsets.only(
                    left: 30.h,
                    right: 57.h,
                  ),
                  child: Text(
                    "Content style export device link duplicate select. Pencil strikethrough figjam auto comment. Opacity rotate shadow star share inspect style. Library device clip strikethrough move. Flows vector overflow style invite scrolling background. Style clip effect union underline. Editor auto bullet select fill select.",
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.83,
                    ),
                  ),
                ),
                SizedBox(height: 38.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Copyright © 2023 - Name Of Product",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStoryOfOurJourney(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgTipsAndUpdatesBlack24dp,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 1.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Tips:",
                      style: CustomTextStyles.labelLargeSemiBold12,
                    ),
                    TextSpan(
                      text: " Let’s want to learn more? ",
                      style: theme.textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "Get Know Airbnb",
                      style: CustomTextStyles.labelLargeSemiBold12.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 52.v),
              child: _buildFrame(
                context,
                image1: ImageConstant.imgRectangle53,
                image2: ImageConstant.imgRectangle54,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 52.v,
              ),
              child: _buildFrame(
                context,
                image1: ImageConstant.imgRectangle5380x79,
                image2: ImageConstant.imgRectangle5480x79,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                bottom: 52.v,
              ),
              child: _buildFrame(
                context,
                image1: ImageConstant.imgRectangle531,
                image2: ImageConstant.imgRectangle541,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 52.v,
              ),
              child: _buildFrame(
                context,
                image1: ImageConstant.imgRectangle532,
                image2: ImageConstant.imgRectangle542,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: image1,
          height: 80.v,
          width: 79.h,
          radius: BorderRadius.circular(
            2.h,
          ),
        ),
        SizedBox(height: 12.v),
        CustomImageView(
          imagePath: image2,
          height: 80.v,
          width: 79.h,
          radius: BorderRadius.circular(
            2.h,
          ),
        ),
      ],
    );
  }
}
