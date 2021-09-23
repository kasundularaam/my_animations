import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_animations/screens/router/app_router.dart';
import 'package:sizer/sizer.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.onGenerateRoute,
      );
    });
  }
}
