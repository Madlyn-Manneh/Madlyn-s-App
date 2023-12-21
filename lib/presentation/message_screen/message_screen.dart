import '../message_screen/widgets/viewhierarchy_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:madlyn_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:madlyn_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:madlyn_s_application1/widgets/custom_elevated_button.dart';
import 'package:madlyn_s_application1/widgets/custom_outlined_button.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore_for_file: must_be_immutable
class MessageScreen extends StatelessWidget {
  MessageScreen({Key? key}) : super(key: key);

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime focusedDay = DateTime.now();

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

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
                      SizedBox(height: 84.v),
                      _buildCalendar(context),
                      SizedBox(height: 40.v),
                      Opacity(
                          opacity: 0.14,
                          child: Divider(indent: 30.h, endIndent: 30.h)),
                      SizedBox(height: 15.v),
                      _buildViewHierarchy(context)
                    ]))),
            bottomNavigationBar: _buildReset(context)));
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
        title: AppbarSubtitleTwo(
            text: "11 - 16 Juni 2023", margin: EdgeInsets.only(left: 47.h)),
        actions: [
          Container(
              height: 4.adaptSize,
              width: 4.adaptSize,
              margin: EdgeInsets.fromLTRB(12.h, 25.v, 16.h, 9.v),
              decoration: BoxDecoration(
                  color: appTheme.gray900,
                  borderRadius: BorderRadius.circular(2.h))),
          AppbarSubtitleOne(
              text: "2 Per, 1 Chi",
              margin: EdgeInsets.only(left: 12.h, top: 18.v, right: 117.h))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return SizedBox(
        height: 417.v,
        width: 354.h,
        child: TableCalendar(
            locale: 'en_US',
            firstDay: DateTime(DateTime.now().year - 5),
            lastDay: DateTime(DateTime.now().year + 5),
            calendarFormat: CalendarFormat.month,
            rangeSelectionMode: rangeSelectionMode,
            startingDayOfWeek: StartingDayOfWeek.sunday,
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            calendarStyle: CalendarStyle(
                outsideDaysVisible: false,
                isTodayHighlighted: true,
                todayTextStyle: TextStyle(
                    color: appTheme.black900,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
                todayDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.h),
                    border: Border.all(
                        color: theme.colorScheme.secondaryContainer,
                        width: 1.h))),
            daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                    color: appTheme.black900,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400)),
            headerVisible: false,
            rowHeight: 40.v,
            focusedDay: focusedDay,
            rangeStartDay: rangeStart,
            rangeEndDay: rangeEnd,
            onDaySelected: (selectedDay, focusedDay) {},
            onRangeSelected: (start, end, focusedDay) {},
            onPageChanged: (focusedDay) {}));
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Opacity(
                  opacity: 0.14,
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.v),
                      child: SizedBox(
                          width: 354.h,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.gray900.withOpacity(0.4)))));
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return ViewhierarchyItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildReset(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 25.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomOutlinedButton(
              width: 165.h,
              text: "Reset",
              buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
              buttonTextStyle: CustomTextStyles.bodyMedium14),
          CustomElevatedButton(
              width: 165.h,
              text: "Confirmation",
              margin: EdgeInsets.only(left: 24.h),
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientPrimaryToLightBlueDecoration,
              onPressed: () {
                onTapConfirmation(context);
              })
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  onTapConfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
  }
}
