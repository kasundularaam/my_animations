import 'package:flutter/material.dart';
import 'package:my_animations/core/m_styles.dart';
import 'package:sizer/sizer.dart';

import 'package:my_animations/data/models/my_animation.dart';

class HomeCard extends StatelessWidget {
  final MyAnimation animation;
  const HomeCard({
    Key? key,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, animation.animationRout,
              arguments: animation.animationName),
          child: Container(
            width: 100.w,
            decoration: MStyles.cardDecoration,
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
            child: Text(
              animation.animationName,
              style: MStyles.crdName,
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }
}
