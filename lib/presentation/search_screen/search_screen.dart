import '../search_screen/widgets/frameninetytwo_item_widget.dart';
import '../search_screen/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:madlyn_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:madlyn_s_application1/widgets/custom_search_view.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

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
                appTheme.gray100,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 55.v),
                _buildEightySix(context),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgStatusBar,
                          height: 55.v,
                          width: 414.h,
                        ),
                        SizedBox(height: 197.v),
                        _buildFrameNinetyTwo(context),
                        SizedBox(height: 49.v),
                        Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text(
                            "Suggestion Place",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 27.v),
                        _buildUserProfile(context),
                      ],
                    ),
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
  Widget _buildEightySix(BuildContext context) {
    return SizedBox(
      height: 168.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 139.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBeach2,
                    height: 139.v,
                    width: 414.h,
                    alignment: Alignment.center,
                  ),
                  CustomAppBar(
                    height: 139.v,
                    centerTitle: true,
                    title: Padding(
                      padding: EdgeInsets.only(
                        top: 26.v,
                        bottom: 49.v,
                      ),
                      child: Column(
                        children: [
                          AppbarSubtitle(
                            text: "Choose Your Favorite",
                          ),
                          SizedBox(height: 8.v),
                          AppbarSubtitleFour(
                            text: "Many Interesting Choices For You",
                            margin: EdgeInsets.symmetric(horizontal: 32.h),
                          ),
                        ],
                      ),
                    ),
                    styleType: Style
                        .bgGradientnamebluegray900namebluegray900opacity074,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomSearchView(
              width: 354.h,
              controller: searchController,
              hintText: "Search Your Destination",
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNinetyTwo(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 77.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 43.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 45.h,
            );
          },
          itemCount: 5,
          itemBuilder: (context, index) {
            return FrameninetytwoItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Opacity(
              opacity: 0.14,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0.v),
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
            return Userprofile1ItemWidget();
          },
        ),
      ),
    );
  }
}
