import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/custom_elevated_button.dart';
import 'package:madlyn_s_application1/widgets/custom_floating_text_field.dart';
import 'package:madlyn_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

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
                          Spacer(flex: 41),
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
                          SizedBox(height: 32.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 245.h,
                                  margin: EdgeInsets.only(left: 30.h),
                                  child: Text(
                                      "Let’s Join With Us to\nAround the World",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.headlineSmall!
                                          .copyWith(height: 1.50)))),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 294.h,
                                  margin:
                                      EdgeInsets.only(left: 30.h, right: 89.h),
                                  child: Text(
                                      "Style clip effect union underline. Editor auto bullet select fill select create draft. Pen list effect bullet layer undo object share outline.",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.83)))),
                          SizedBox(height: 25.v),
                          _buildFullName(context),
                          SizedBox(height: 16.v),
                          _buildEmail(context),
                          SizedBox(height: 16.v),
                          _buildPassword(context),
                          SizedBox(height: 16.v),
                          _buildRegister(context),
                          Spacer(flex: 58),
                          SizedBox(height: 21.v),
                          SizedBox(
                              width: 242.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text:
                                            "By clicking Register, you are agree to our\nregulation of ",
                                        style: theme.textTheme.bodySmall!
                                            .copyWith(height: 1.83)),
                                    TextSpan(
                                        text: "Terms and Privary",
                                        style: CustomTextStyles
                                            .labelLargeBluegray400SemiBold
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))
                                  ]),
                                  textAlign: TextAlign.center))
                        ]))))));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: CustomFloatingTextField(
            controller: fullNameController,
            labelText: "Full Name",
            labelStyle: CustomTextStyles.bodySmallGray900,
            hintText: "Full Name"));
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
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
        text: "Register",
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToLightBlueDecoration,
        onPressed: () {
          onTapRegister(context);
        });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
