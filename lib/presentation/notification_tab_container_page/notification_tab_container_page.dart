import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/presentation/notification_page/notification_page.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:madlyn_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NotificationTabContainerPage extends StatefulWidget {
  const NotificationTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationTabContainerPageState createState() =>
      NotificationTabContainerPageState();
}

class NotificationTabContainerPageState
    extends State<NotificationTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
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
                appTheme.gray100,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgStatusBar,
                  height: 55.v,
                  width: 414.h,
                ),
                SizedBox(height: 130.v),
                _buildTabview(context),
                SizedBox(
                  height: 567.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      NotificationPage(),
                      NotificationPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 111.v,
      title: Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "Notification",
              margin: EdgeInsets.only(right: 41.h),
            ),
            SizedBox(height: 8.v),
            AppbarSubtitleFive(
              text: "You always get the latest news",
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup1930Gray900,
          margin: EdgeInsets.fromLTRB(30.h, 8.v, 30.h, 4.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: 354.h,
      decoration: BoxDecoration(
        color: appTheme.blueGray5001,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray900,
        labelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.gray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicatorPadding: EdgeInsets.all(
          2.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.circular(
            6.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Notification",
            ),
          ),
          Tab(
            child: Text(
              "Activity",
            ),
          ),
        ],
      ),
    );
  }
}
