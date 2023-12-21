import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:madlyn_s_application1/widgets/app_bar/custom_app_bar.dart';

class MessageOneScreen extends StatelessWidget {
  const MessageOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      theme.colorScheme.onPrimaryContainer,
                      appTheme.gray100
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgStatusBar,
                          height: 55.v,
                          width: 414.h),
                      SizedBox(height: 88.v),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 30.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 11.h, vertical: 2.v),
                                        decoration: AppDecoration.fillBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder12),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Text("Wednesday",
                                                      style: CustomTextStyles
                                                          .bodySmallSecondaryContainer)),
                                              Container(
                                                  height: 4.adaptSize,
                                                  width: 4.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 8.h,
                                                      top: 7.v,
                                                      bottom: 7.v),
                                                  decoration: BoxDecoration(
                                                      color: theme.colorScheme
                                                          .secondaryContainer
                                                          .withOpacity(1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.h))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h, top: 2.v),
                                                  child: Text("June 10, 2023",
                                                      style: CustomTextStyles
                                                          .bodySmallSecondaryContainer))
                                            ]))),
                                SizedBox(height: 16.v),
                                Container(
                                    width: 286.h,
                                    margin: EdgeInsets.only(right: 68.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13.h, vertical: 6.v),
                                    decoration: AppDecoration.outlineBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL12),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 4.v),
                                          Container(
                                              width: 247.h,
                                              margin:
                                                  EdgeInsets.only(right: 10.h),
                                              child: Text(
                                                  "Flows vector overflow style invite scrolling background. Style clip effect union.",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodySmallOnPrimaryContainer
                                                      .copyWith(height: 1.83)))
                                        ])),
                                SizedBox(height: 3.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Text("Delivered (08.00 AM)",
                                        style: CustomTextStyles
                                            .bodySmallSecondaryContainer)),
                                SizedBox(height: 17.v),
                                Container(
                                    width: 286.h,
                                    margin: EdgeInsets.only(right: 68.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13.h, vertical: 6.v),
                                    decoration: AppDecoration.outlineBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL12),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 4.v),
                                          Container(
                                              width: 247.h,
                                              margin:
                                                  EdgeInsets.only(right: 10.h),
                                              child: Text(
                                                  "Flows vector overflow style invite scrolling background. Style clip effect union.",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodySmallOnPrimaryContainer
                                                      .copyWith(height: 1.83)))
                                        ])),
                                SizedBox(height: 3.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Text("Delivered (08.05 AM)",
                                        style: CustomTextStyles
                                            .bodySmallSecondaryContainer)),
                                SizedBox(height: 17.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: 286.h,
                                        margin: EdgeInsets.only(left: 68.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 13.h, vertical: 6.v),
                                        decoration: AppDecoration
                                            .outlineBluegray50
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 4.v),
                                              Container(
                                                  width: 247.h,
                                                  margin: EdgeInsets.only(
                                                      right: 10.h),
                                                  child: Text(
                                                      "Flows vector overflow style invite scrolling background. Style clip effect union.",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodySmallOnPrimaryContainer
                                                          .copyWith(
                                                              height: 1.83)))
                                            ]))),
                                SizedBox(height: 3.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 80.h),
                                    child: Text("Delivered (08.10 AM)",
                                        style: CustomTextStyles
                                            .bodySmallSecondaryContainer)),
                                SizedBox(height: 17.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: 286.h,
                                        margin: EdgeInsets.only(left: 68.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 13.h, vertical: 6.v),
                                        decoration: AppDecoration
                                            .outlineBluegray50
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 4.v),
                                              Container(
                                                  width: 247.h,
                                                  margin: EdgeInsets.only(
                                                      right: 10.h),
                                                  child: Text(
                                                      "Flows vector overflow style invite scrolling background. Style clip effect union.",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodySmallOnPrimaryContainer
                                                          .copyWith(
                                                              height: 1.83)))
                                            ]))),
                                SizedBox(height: 3.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 80.h),
                                    child: Text("Delivered (08.12 AM)",
                                        style: CustomTextStyles
                                            .bodySmallSecondaryContainer)),
                                SizedBox(height: 29.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.h, vertical: 2.v),
                                        decoration: AppDecoration.fillBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder12),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Text("Thursday",
                                                      style: CustomTextStyles
                                                          .bodySmallSecondaryContainer)),
                                              Container(
                                                  height: 4.adaptSize,
                                                  width: 4.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 8.h,
                                                      top: 7.v,
                                                      bottom: 7.v),
                                                  decoration: BoxDecoration(
                                                      color: theme.colorScheme
                                                          .secondaryContainer
                                                          .withOpacity(1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.h))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h, top: 2.v),
                                                  child: Text("June 11, 2023",
                                                      style: CustomTextStyles
                                                          .bodySmallSecondaryContainer))
                                            ]))),
                                SizedBox(height: 16.v),
                                Container(
                                    width: 286.h,
                                    margin: EdgeInsets.only(right: 68.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13.h, vertical: 6.v),
                                    decoration: AppDecoration.outlineBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL12),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 4.v),
                                          Container(
                                              width: 247.h,
                                              margin:
                                                  EdgeInsets.only(right: 10.h),
                                              child: Text(
                                                  "Flows vector overflow style invite scrolling background. Style clip effect union.",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodySmallOnPrimaryContainer
                                                      .copyWith(height: 1.83)))
                                        ])),
                                SizedBox(height: 3.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Text("Delivered (05.00 AM)",
                                        style: CustomTextStyles
                                            .bodySmallSecondaryContainer))
                              ])),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildThree(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 54.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "Pura Luhur Uluwatu"),
        actions: [
          Container(
              height: 8.adaptSize,
              width: 8.adaptSize,
              margin: EdgeInsets.fromLTRB(30.h, 23.v, 19.h, 4.v),
              decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(4.h))),
          AppbarSubtitleThree(
              text: "Online",
              margin: EdgeInsets.only(left: 8.h, top: 18.v, right: 49.h))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 23.v),
        decoration: AppDecoration.outlineBluegray501,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgAddCircleBlack24dp,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Opacity(
                  opacity: 0.14,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: SizedBox(
                          height: 24.v,
                          child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              indent: 3.h,
                              endIndent: 3.h)))),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 4.v),
                  child: Text("Your Message ...",
                      style: CustomTextStyles.bodyMediumSecondaryContainer)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgUser, height: 24.v, width: 78.h)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
