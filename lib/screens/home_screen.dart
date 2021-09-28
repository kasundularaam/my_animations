import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_animations/core/m_colors.dart';
import 'package:my_animations/data/models/my_animation.dart';
import 'package:my_animations/logic/cubit/home_cubit/home_cubit.dart';
import 'package:my_animations/screens/templates/inner_screen_tmpl.dart';
import 'package:my_animations/screens/widgets/home_card.dart';
import 'package:my_animations/screens/widgets/m_loading.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeCubit>(context).loadAnimations();
    return InnerScreenTmpl(
      title: "Home",
      content: Container(
        color: MColors.homeBg,
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeLoaded) {
              return ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  ListView.builder(
                      padding: const EdgeInsets.all(0),
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.animations.length,
                      itemBuilder: (context, index) {
                        MyAnimation animation = state.animations[index];
                        return HomeCard(animation: animation);
                      }),
                ],
              );
            } else {
              return const Center(
                child: MLoading(),
              );
            }
          },
        ),
      ),
    );
  }
}
