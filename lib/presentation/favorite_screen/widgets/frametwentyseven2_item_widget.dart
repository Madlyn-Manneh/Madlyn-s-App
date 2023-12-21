import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Frametwentyseven2ItemWidget extends StatelessWidget {
  const Frametwentyseven2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Canada Travel",
        style: TextStyle(
          color: appTheme.gray900,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primaryContainer,
      selectedColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          21.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
