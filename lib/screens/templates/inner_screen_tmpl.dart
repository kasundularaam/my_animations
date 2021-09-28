import 'package:flutter/material.dart';
import 'package:my_animations/core/m_colors.dart';

import 'package:my_animations/screens/widgets/m_appbar.dart';

class InnerScreenTmpl extends StatelessWidget {
  final String title;
  final Widget content;
  const InnerScreenTmpl({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.homeMain,
      body: SafeArea(
          child: Stack(
        children: [
          content,
          MAppBar(title: title),
        ],
      )),
    );
  }
}
