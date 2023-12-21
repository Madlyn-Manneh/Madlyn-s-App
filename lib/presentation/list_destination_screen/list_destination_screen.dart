import '../list_destination_screen/widgets/listdestination_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:madlyn_s_application1/widgets/app_bar/custom_app_bar.dart';

class ListDestinationScreen extends StatelessWidget {
  const ListDestinationScreen({Key? key})
      : super(
          key: key,
        );

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
                appTheme.gray100,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgStatusBar,
                  height: 55.v,
                  width: 414.h,
                ),
                SizedBox(height: 134.v),
                _buildListDestination(context),
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
      height: 143.v,
      title: Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "Papua, Indonesia",
              margin: EdgeInsets.only(right: 4.h),
            ),
            SizedBox(height: 5.v),
            AppbarSubtitleFive(
              text: "There are 80 interesting tourist spots",
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup1930Gray900,
          margin: EdgeInsets.fromLTRB(30.h, 5.v, 30.h, 4.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildListDestination(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Opacity(
              opacity: 0.14,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 6.5.v),
                child: SizedBox(
                  width: 354.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray900.withOpacity(0.4),
                  ),
                ),
              ),
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return ListdestinationItemWidget();
          },
        ),
      ),
    );
  }
}
