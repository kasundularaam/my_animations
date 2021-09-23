part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<MyAnimation> animations;
  HomeLoaded({
    required this.animations,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HomeLoaded && listEquals(other.animations, animations);
  }

  @override
  int get hashCode => animations.hashCode;

  @override
  String toString() => 'HomeLoaded(animations: $animations)';
}
