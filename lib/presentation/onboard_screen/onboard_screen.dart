import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key})
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgStatusBar,
                    height: 55.v,
                    width: 414.h,
                  ),
                  SizedBox(height: 58.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRefresh,
                        height: 21.v,
                        width: 26.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text(
                          "Travel Go",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 36.v),
                  SizedBox(
                    width: 260.h,
                    child: Text(
                      "Start Your Traveling\nJourney Safely & Fun",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    width: 294.h,
                    margin: EdgeInsets.symmetric(horizontal: 59.h),
                    child: Text(
                      "Style clip effect union underline. Editor auto bullet select fill select create draft. Pen list effect bullet layer undo object share outline.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.83,
                      ),
                    ),
                  ),
                  SizedBox(height: 71.v),
                  SizedBox(
                    height: 6.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        spacing: 8,
                        activeDotColor: theme.colorScheme.primary,
                        dotColor: theme.colorScheme.primary.withOpacity(0.3),
                        dotHeight: 6.v,
                        dotWidth: 6.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 65.v),
                  SizedBox(
                    height: 544.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse7,
                          height: 296.v,
                          width: 414.h,
                          alignment: Alignment.bottomCenter,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector2,
                          height: 441.v,
                          width: 184.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 99.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup,
                          height: 441.v,
                          width: 184.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 98.h),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
