import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/presentation/home_page/home_page.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:madlyn_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomeTabContainerPage extends StatefulWidget {
  const HomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTabContainerPageState createState() => HomeTabContainerPageState();
}

class HomeTabContainerPageState extends State<HomeTabContainerPage>
    with TickerProviderStateMixin {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
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
                SizedBox(height: 95.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 227.h,
                    margin: EdgeInsets.only(left: 30.h),
                    child: Text(
                      "Wherever You Go,\nIt’s Beautiful Place",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22.v),
                _buildTabview(context),
                SizedBox(
                  height: 505.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      HomePage(),
                      HomePage(),
                      HomePage(),
                      HomePage(),
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
      height: 99.v,
      title: Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 57.h),
              child: Row(
                children: [
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgSocialConnectionBlueGray400,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 3.v,
                    ),
                  ),
                  AppbarSubtitleFive(
                    text: "Location",
                    margin: EdgeInsets.only(left: 6.h),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            AppbarTitleDropdown(
              hintText: "Asia, Indonesia",
              items: dropdownItemList,
              onTap: (value) {},
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup1930,
          margin: EdgeInsets.only(
            left: 30.h,
            top: 1.v,
            right: 30.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 42.v,
      width: 384.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.onPrimaryContainer,
        unselectedLabelColor: appTheme.gray900,
        tabs: [
          Tab(
            child: Text(
              "All Filter",
            ),
          ),
          Tab(
            child: Text(
              "National Park",
            ),
          ),
          Tab(
            child: Text(
              "Cruise Travel",
            ),
          ),
          Tab(
            child: Text(
              "Las Vegas Travel",
            ),
          ),
        ],
      ),
    );
  }
}
