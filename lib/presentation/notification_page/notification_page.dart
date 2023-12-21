import '../notification_page/widgets/userprofile2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationPageState createState() => NotificationPageState();
}

class NotificationPageState extends State<NotificationPage>
    with AutomaticKeepAliveClientMixin<NotificationPage> {
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
                appTheme.gray100,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.gradientOnPrimaryContainerToGray,
            child: Column(
              children: [
                SizedBox(height: 14.v),
                _buildUserProfile(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
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
              padding: EdgeInsets.symmetric(vertical: 8.5.v),
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
        itemCount: 9,
        itemBuilder: (context, index) {
          return Userprofile2ItemWidget();
        },
      ),
    );
  }
}
