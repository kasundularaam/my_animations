import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_animations/core/m_colors.dart';
import 'package:sizer/sizer.dart';

class MStyles {
  static TextStyle homeTitle = TextStyle(
    color: MColors.homeTitle,
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle crdName = TextStyle(
    color: MColors.homeCrdTxt,
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
  );

  static BoxDecoration cardDecoration = BoxDecoration(
    color: MColors.homeCrdBg,
    borderRadius: BorderRadius.circular(2.w),
  );
}
