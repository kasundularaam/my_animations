import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_animations/logic/cubit/home_cubit/home_cubit.dart';
import 'package:my_animations/screens/animation_screens/knight_rider_screen.dart';

import '../home_screen.dart';

class AppRouter {
  static const String home = '/';
  static const String knightRider = '/knightRider';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(),
            child: const HomeScreen(),
          ),
        );
      case knightRider:
        String name = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => KnightRiderScreen(name: name),
        );
      default:
        throw "Route not found!";
    }
  }
}
