import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:madlyn_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:madlyn_s_application1/widgets/custom_elevated_button.dart';
import 'package:madlyn_s_application1/presentation/modal_confirmation_dialog/modal_confirmation_dialog.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

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
                      SizedBox(height: 85.v),
                      _buildChoiceOfDestination(context),
                      SizedBox(height: 32.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup1991,
                          height: 13.v,
                          width: 414.h),
                      SizedBox(height: 31.v),
                      _buildPaymentMethod(context),
                      SizedBox(height: 32.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup1991,
                          height: 13.v,
                          width: 414.h),
                      SizedBox(height: 29.v),
                      _buildPriceDetails(context),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildPurchase(context)));
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
        title: AppbarSubtitleTwo(text: "Payment Method"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildChoiceOfDestination(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("Choice Of Destination",
                      style: CustomTextStyles.titleMediumMedium_1),
                  SizedBox(height: 6.v),
                  SizedBox(
                      width: 211.h,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("11 - 16 Juni 2023",
                                style: CustomTextStyles
                                    .titleSmallSecondaryContainer),
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                margin: EdgeInsets.only(top: 8.v, bottom: 9.v),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.secondaryContainer
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(2.h))),
                            Text("2 Per, 1 Chi",
                                style: CustomTextStyles
                                    .titleSmallSecondaryContainer)
                          ]))
                ]),
                Padding(
                    padding: EdgeInsets.only(top: 3.v, bottom: 31.v),
                    child: Text("Change",
                        style: CustomTextStyles.labelLargePrimary
                            .copyWith(decoration: TextDecoration.underline)))
              ]),
          SizedBox(height: 24.v),
          Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle565,
                        height: 97.v,
                        width: 93.h,
                        radius: BorderRadius.circular(8.h)),
                    Padding(
                        padding: EdgeInsets.only(top: 13.v, bottom: 11.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Raja Ampat",
                                  style: theme.textTheme.titleSmall),
                              SizedBox(height: 6.v),
                              SizedBox(
                                  width: 230.h,
                                  child: Text(
                                      "Library device clip strikethrough move. Flows vector overflow style invite.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.83)))
                            ]))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Payment Method", style: CustomTextStyles.titleMediumMedium_1),
          SizedBox(height: 23.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgMastercard1,
                height: 44.v,
                width: 64.h,
                radius: BorderRadius.circular(4.h)),
            Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("5543 9929 0013 9925",
                          style: CustomTextStyles.labelLargeSemiBold),
                      SizedBox(height: 5.v),
                      Text("a.n Bessie Cooper",
                          style: theme.textTheme.bodySmall)
                    ])),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 14.v, bottom: 11.v),
                child: Text("Change",
                    style: CustomTextStyles.labelLargePrimary
                        .copyWith(decoration: TextDecoration.underline)))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildPriceDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Price Details",
                  style: CustomTextStyles.titleMediumMedium_1)),
          SizedBox(height: 26.v),
          _buildServiceFee(context,
              serviceFeeText: "Rental Price (6 Day)", priceText: "30.500"),
          SizedBox(height: 19.v),
          _buildServiceFee(context,
              serviceFeeText: "Service Fee", priceText: "500"),
          SizedBox(height: 20.v),
          _buildServiceFee(context,
              serviceFeeText: "Rental Price (6 Day)", priceText: "420"),
          SizedBox(height: 19.v),
          _buildServiceFee(context,
              serviceFeeText: "Total Payment", priceText: "31.420")
        ]));
  }

  /// Section Widget
  Widget _buildPurchase(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 24.v),
        decoration: AppDecoration.fillGray,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Opacity(opacity: 0.14, child: Divider()),
          Padding(
              padding: EdgeInsets.only(left: 30.h, top: 24.v, right: 30.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Text("Price Place", style: theme.textTheme.bodySmall),
                          Padding(
                              padding: EdgeInsets.only(top: 4.v),
                              child: Text("31.420",
                                  style: CustomTextStyles.titleMedium18))
                        ])),
                    CustomElevatedButton(
                        height: 53.v,
                        width: 107.h,
                        text: "Purchase",
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientPrimaryToLightBlueDecoration,
                        onPressed: () {
                          onTapPurchase(context);
                        })
                  ]))
        ]));
  }

  /// Common widget
  Widget _buildServiceFee(
    BuildContext context, {
    required String serviceFeeText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(serviceFeeText,
          style: CustomTextStyles.bodyMediumSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1))),
      Text(priceText,
          style: CustomTextStyles.bodyMediumSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Displays a dialog with the [ModalConfirmationDialog] content.
  onTapPurchase(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ModalConfirmationDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
