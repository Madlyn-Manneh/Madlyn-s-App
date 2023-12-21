import '../favorite_screen/widgets/frametwentyseven2_item_widget.dart';
import '../favorite_screen/widgets/frametwentyseven_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/custom_elevated_button.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

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
                      SizedBox(height: 26.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 30.h),
                              child: Text("Choose Your Favorite",
                                  style: theme.textTheme.headlineSmall))),
                      SizedBox(height: 11.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 300.h,
                              margin: EdgeInsets.only(left: 30.h, right: 84.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "I’ll chose ",
                                        style: theme.textTheme.bodySmall),
                                    TextSpan(
                                        text:
                                            "6 favorite topics that became references for my future destinations or vacations",
                                        style: CustomTextStyles
                                            .labelLargePrimaryBold)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 46.v),
                      _buildCategorySection(context),
                      SizedBox(height: 55.v),
                      _buildNationalCountrySection(context),
                      Spacer(),
                      CustomElevatedButton(
                          text: "Choose Favorite",
                          margin: EdgeInsets.symmetric(horizontal: 30.h),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientPrimaryToLightBlueDecoration,
                          onPressed: () {
                            onTapChooseFavorite(context);
                          }),
                      SizedBox(height: 22.v),
                      Text("Skip for now",
                          style: CustomTextStyles.labelLargeBluegray400
                              .copyWith(decoration: TextDecoration.underline)),
                      SizedBox(height: 23.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildCategorySection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 30.h),
          child: Text("Category", style: theme.textTheme.titleMedium)),
      SizedBox(height: 26.v),
      Align(
          alignment: Alignment.centerRight,
          child: Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                  9, (index) => FrametwentysevenItemWidget())))
    ]);
  }

  /// Section Widget
  Widget _buildNationalCountrySection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 30.h),
          child: Text("National Country", style: theme.textTheme.titleMedium)),
      SizedBox(height: 27.v),
      Align(
          alignment: Alignment.centerRight,
          child: Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                  6, (index) => Frametwentyseven2ItemWidget())))
    ]);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapChooseFavorite(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
