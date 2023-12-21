import '../home_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;

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
                      appTheme.gray100
                    ])),
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 32.v),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildUserProfile(context),
                                SizedBox(height: 52.v),
                                _buildAvailableCounter(context)
                              ])))
                ])))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
        height: 386.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 32.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return UserprofileItemWidget(onTapImgRating: () {
                onTapImgRating(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildFortyFour(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Category", style: theme.textTheme.titleMedium),
              SizedBox(height: 26.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle451,
                    height: 44.v,
                    width: 56.h,
                    radius: BorderRadius.circular(6.h)),
                Padding(
                    padding: EdgeInsets.only(left: 14.h, bottom: 2.v),
                    child: _buildFrameFortyOne(context,
                        title: "The Title Event",
                        availableCount: "20 Available")),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle452,
                    height: 44.v,
                    width: 56.h,
                    radius: BorderRadius.circular(6.h)),
                Padding(
                    padding: EdgeInsets.only(left: 14.h, bottom: 2.v),
                    child: _buildFrameFortyOne(context,
                        title: "The Title Event",
                        availableCount: "20 Available"))
              ]),
              SizedBox(height: 28.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 70.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("The Title Event",
                                style: theme.textTheme.labelLarge),
                            Text("The Title Event",
                                style: theme.textTheme.labelLarge)
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildAvailableCounter(BuildContext context) {
    return SizedBox(
        height: 167.v,
        width: 364.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle45,
              height: 44.v,
              width: 56.h,
              radius: BorderRadius.circular(6.h),
              alignment: Alignment.bottomLeft),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 70.h),
                  child:
                      Text("20 Available", style: theme.textTheme.bodySmall))),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle4544x56,
              height: 44.v,
              width: 56.h,
              radius: BorderRadius.circular(6.h),
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 108.h)),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child:
                      Text("20 Available", style: theme.textTheme.bodySmall))),
          _buildFortyFour(context)
        ]));
  }

  /// Common widget
  Widget _buildFrameFortyOne(
    BuildContext context, {
    required String title,
    required String availableCount,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title,
          style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray900)),
      SizedBox(height: 2.v),
      Text(availableCount,
          style:
              theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray400))
    ]);
  }

  /// Navigates to the aboutScreen when the action is triggered.
  onTapImgRating(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutScreen);
  }
}
