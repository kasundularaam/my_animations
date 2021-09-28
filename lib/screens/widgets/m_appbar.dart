import 'package:flutter/material.dart';

import 'package:my_animations/core/m_colors.dart';
import 'package:my_animations/core/m_styles.dart';
import 'package:sizer/sizer.dart';

class MAppBar extends StatelessWidget {
  final String title;
  const MAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: MColors.homeTopBg,
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
            width: 100.w,
            child: Text(
              title,
              style: MStyles.homeTitle,
            ),
          ),
          Container(
            width: 100.w,
            height: 0.1.h,
            color: MColors.divider,
          ),
        ],
      ),
    );
  }
}
