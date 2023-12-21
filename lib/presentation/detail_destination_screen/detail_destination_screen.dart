import '../detail_destination_screen/widgets/detaildestination_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:madlyn_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:madlyn_s_application1/widgets/custom_elevated_button.dart';
import 'package:madlyn_s_application1/widgets/custom_rating_bar.dart';

class DetailDestinationScreen extends StatelessWidget {
  const DetailDestinationScreen({Key? key}) : super(key: key);

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
                      appTheme.gray100
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgStatusBar,
                          height: 55.v,
                          width: 414.h),
                      SizedBox(
                          height: 841.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                _buildEight(context),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        decoration: AppDecoration
                                            .fillOnPrimaryContainer
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL32),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 31.v),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 28.h),
                                                      child: Row(children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 3.v,
                                                                    bottom:
                                                                        2.v),
                                                            child:
                                                                CustomRatingBar(
                                                                    initialRating:
                                                                        5)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 12.h),
                                                            child: Text(
                                                                "4.5/5.0",
                                                                style: CustomTextStyles
                                                                    .bodyMediumBluegray400))
                                                      ]))),
                                              SizedBox(height: 9.v),
                                              _buildTwentyNine(context),
                                              SizedBox(height: 26.v),
                                              _buildDetailDestination(context),
                                              SizedBox(height: 32.v),
                                              Container(
                                                  width: 352.h,
                                                  margin: EdgeInsets.only(
                                                      left: 28.h, right: 30.h),
                                                  child: Text(
                                                      "Ellipse rotate community underline list content inspect image align. Object connection inspect pixel style connection image layout boolean. Star figma group invite scale layer opacity star. Pixel component scrolling fill font edit. Boolean flatten pen reesizing move follower. Main layer mask layout prototype selection duplicate vector bold. Slice editor editor follower opacity pencil share layer. Clipv bullet rotate shadow vector flows boolean draft flatten.",
                                                      maxLines: 9,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodyMediumBluegray400
                                                          .copyWith(
                                                              height: 2.00))),
                                              SizedBox(height: 26.v),
                                              _buildBookNow(context)
                                            ])))
                              ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 430.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle62,
                  height: 430.v,
                  width: 414.h,
                  alignment: Alignment.center),
              CustomAppBar(
                  height: 68.v,
                  leadingWidth: 70.h,
                  leading: AppbarLeadingIconbutton(
                      imagePath: ImageConstant.imgArrowsArrowLeft2,
                      margin: EdgeInsets.only(left: 30.h)),
                  actions: [
                    AppbarTrailingIconbutton(
                        imagePath: ImageConstant.imgSocialConnection,
                        margin: EdgeInsets.symmetric(horizontal: 30.h))
                  ])
            ])));
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 29.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Raja Ampat", style: theme.textTheme.headlineSmall),
          CustomImageView(
              imagePath: ImageConstant.imgMessage,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 10.v),
              onTap: () {
                onTapImgMessage(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildDetailDestination(BuildContext context) {
    return SizedBox(
        height: 64.v,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 29.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return DetaildestinationItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildBookNow(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillGray,
        child: Column(children: [
          Opacity(opacity: 0.14, child: Divider()),
          SizedBox(height: 24.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Price Place",
                                  style: theme.textTheme.bodySmall),
                              SizedBox(height: 4.v),
                              Text("1.500 / day",
                                  style: CustomTextStyles.titleMedium18)
                            ])),
                    CustomElevatedButton(
                        height: 53.v,
                        width: 110.h,
                        text: "Book Now",
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientPrimaryToLightBlueDecoration,
                        onPressed: () {
                          onTapBookNow(context);
                        })
                  ])),
          SizedBox(height: 24.v)
        ]));
  }

  /// Navigates to the messageOneScreen when the action is triggered.
  onTapImgMessage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageOneScreen);
  }

  /// Navigates to the messageScreen when the action is triggered.
  onTapBookNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageScreen);
  }
}
