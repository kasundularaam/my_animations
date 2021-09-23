import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:my_animations/data/models/my_animation.dart';
import 'package:my_animations/services/animations_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Future<void> loadAnimations() async {
    emit(HomeLoading());
    await Future.delayed(const Duration(seconds: 2));
    List<MyAnimation> animations = AnimationsRepo.getAnimations();
    emit(HomeLoaded(animations: animations));
  }
}
