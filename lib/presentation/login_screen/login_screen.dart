import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/custom_elevated_button.dart';
import 'package:madlyn_s_application1/widgets/custom_floating_text_field.dart';
import 'package:madlyn_s_application1/widgets/custom_outlined_button.dart';
import 'package:madlyn_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                child: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: double.maxFinite,
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgStatusBar,
                              height: 55.v,
                              width: 414.h),
                          Spacer(flex: 46),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 37.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRefresh,
                                        height: 21.v,
                                        width: 26.h),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 3.v),
                                        child: Text("Travel Go",
                                            style: theme.textTheme.bodyLarge))
                                  ]))),
                          SizedBox(height: 34.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 30.h),
                                  child: Text("Welcome Travelling",
                                      style: theme.textTheme.headlineSmall))),
                          SizedBox(height: 12.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 294.h,
                                  margin:
                                      EdgeInsets.only(left: 30.h, right: 89.h),
                                  child: Text(
                                      "Style clip effect union underline. Editor auto bullet select fill select create draft. Pen list effect.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.83)))),
                          SizedBox(height: 25.v),
                          _buildEmail(context),
                          SizedBox(height: 16.v),
                          _buildPassword(context),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 30.h),
                                  child: Text("Forget password?",
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline)))),
                          SizedBox(height: 19.v),
                          _buildLogin(context),
                          SizedBox(height: 22.v),
                          _buildLineOne(context),
                          SizedBox(height: 19.v),
                          _buildLoginWithGoogle(context),
                          SizedBox(height: 16.v),
                          _buildLoginWithFacebook(context),
                          Spacer(flex: 53)
                        ]))))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: CustomFloatingTextField(
            controller: emailController,
            labelText: "Your Email",
            labelStyle: CustomTextStyles.bodySmallGray900,
            hintText: "Your Email",
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 20.v, 16.h, 20.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIcon,
                    height: 16.adaptSize,
                    width: 16.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 56.v),
            obscureText: true));
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
        text: "Login",
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToLightBlueDecoration,
        onPressed: () {
          onTapLogin(context);
        });
  }

  /// Section Widget
  Widget _buildLineOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Opacity(
                  opacity: 0.14,
                  child: Padding(
                      padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
                      child: SizedBox(width: 161.h, child: Divider()))),
              Opacity(
                  opacity: 0.24,
                  child: Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text("OR",
                          style: CustomTextStyles.bodySmallGray900_1))),
              Opacity(
                  opacity: 0.14,
                  child: Padding(
                      padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
                      child:
                          SizedBox(width: 168.h, child: Divider(indent: 7.h))))
            ]));
  }

  /// Section Widget
  Widget _buildLoginWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "Login with Google",
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 23.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogleiconLogo,
                height: 16.adaptSize,
                width: 16.adaptSize)));
  }

  /// Section Widget
  Widget _buildLoginWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
        text: "Login with Facebook",
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 23.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebookLogo,
                height: 16.adaptSize,
                width: 16.adaptSize)));
  }

  /// Navigates to the otpScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpScreen);
  }
}
