import 'package:flutter/material.dart';
import 'package:my_animations/core/m_colors.dart';

class MLoading extends StatelessWidget {
  const MLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: MColors.progress,
    );
  }
}
