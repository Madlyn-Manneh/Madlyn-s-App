import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/custom_elevated_button.dart';
import 'package:madlyn_s_application1/widgets/custom_pin_code_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
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
                      SizedBox(height: 62.v),
                      Text("Verification Account",
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 19.v),
                      Container(
                          width: 294.h,
                          margin: EdgeInsets.symmetric(horizontal: 59.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Style clip effect union underline. Editor auto bullet select fill select ",
                                    style: theme.textTheme.bodySmall),
                                TextSpan(
                                    text: "bessiecooper@gmail.com",
                                    style:
                                        CustomTextStyles.labelLargeSemiBold12)
                              ]),
                              textAlign: TextAlign.center)),
                      SizedBox(height: 41.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 43.h),
                          child: CustomPinCodeTextField(
                              context: context, onChanged: (value) {})),
                      SizedBox(height: 44.v),
                      CustomElevatedButton(
                          text: "Verification",
                          margin: EdgeInsets.symmetric(horizontal: 43.h),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientPrimaryToLightBlueDecoration,
                          onPressed: () {
                            onTapVerification(context);
                          }),
                      SizedBox(height: 24.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("I don’t have code?",
                                style:
                                    CustomTextStyles.bodyMediumBluegray40014),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text("Resend Code",
                                    style: theme.textTheme.titleSmall))
                          ]),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the favoriteScreen when the action is triggered.
  onTapVerification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.favoriteScreen);
  }
}
