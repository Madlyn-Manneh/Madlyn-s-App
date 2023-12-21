import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/custom_icon_button.dart';
import 'package:madlyn_s_application1/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
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
        backgroundColor: Colors.transparent,
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
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.gradientOnPrimaryContainerToGray,
            child: SizedBox(
              height: 792.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildProfileImageStack(context),
                  _buildEditPhotoColumn(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileImageStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 324.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgWoman1,
              height: 324.v,
              width: 414.h,
              radius: BorderRadius.vertical(
                bottom: Radius.circular(23.h),
              ),
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgStatusBar,
              height: 55.v,
              width: 414.h,
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditPhotoColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 32.v,
              ),
              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bessie Cooper",
                        style: CustomTextStyles.titleMediumMedium_1,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVerifiedBlack24dp,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 2.v,
                          bottom: 5.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    width: 237.h,
                    margin: EdgeInsets.symmetric(horizontal: 46.h),
                    child: Text(
                      "Bullet editor invite shadow create effect scrolling community shadow.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.83,
                      ),
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomOutlinedButton(
                          height: 42.v,
                          text: "Edit Photo",
                          margin: EdgeInsets.only(right: 12.h),
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          buttonTextStyle: CustomTextStyles.bodySmallGray900,
                        ),
                      ),
                      Expanded(
                        child: CustomOutlinedButton(
                          height: 42.v,
                          text: "Verification",
                          margin: EdgeInsets.only(left: 12.h),
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          buttonTextStyle: CustomTextStyles.bodySmallGray900,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 31.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 2.h,
                    ),
                    child: _buildAccountBalanceRow(
                      context,
                      dynamicProperty2: "Profile",
                      dynamicProperty3: "Short Description Of Menu",
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 2.h,
                    ),
                    child: _buildAccountBalanceRow(
                      context,
                      dynamicProperty2: "Payment & Method",
                      dynamicProperty3: "Short Description Of Menu",
                    ),
                  ),
                  SizedBox(height: 39.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 2.h,
                    ),
                    child: _buildAccountBalanceRow(
                      context,
                      dynamicProperty2: "Language",
                      dynamicProperty3: "Short Description Of Menu",
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 2.h,
                    ),
                    child: _buildAccountBalanceRow(
                      context,
                      dynamicProperty2: "Privacy & Security",
                      dynamicProperty3: "Short Description Of Menu",
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 2.h,
                    ),
                    child: _buildAccountBalanceRow(
                      context,
                      dynamicProperty2: "Advanced Setting",
                      dynamicProperty3: "Short Description Of Menu",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.v),
            Text(
              "Version 1.0.0 (2023)",
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildAccountBalanceRow(
    BuildContext context, {
    required String dynamicProperty2,
    required String dynamicProperty3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 36.adaptSize,
          width: 36.adaptSize,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.fillPrimaryTL8,
          child: CustomImageView(
            imagePath: ImageConstant.imgAccountBalance,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 13.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dynamicProperty2,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: appTheme.gray900,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                dynamicProperty3,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.blueGray400,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlack24dp,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 7.v),
        ),
      ],
    );
  }
}
