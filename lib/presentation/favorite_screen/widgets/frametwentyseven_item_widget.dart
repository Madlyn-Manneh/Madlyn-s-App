import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FrametwentysevenItemWidget extends StatelessWidget {
  const FrametwentysevenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 12.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Museum & Institutions",
          style: TextStyle(
            color: appTheme.gray900,
            fontSize: 12.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.black900.withOpacity(0.14),
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            21.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
