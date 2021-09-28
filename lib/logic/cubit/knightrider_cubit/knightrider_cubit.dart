import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'knightrider_state.dart';

class KnightriderCubit extends Cubit<KnightriderState> {
  KnightriderCubit() : super(KnightriderInitial());

  static const int count = 20;
  static const int duration = 50;

  Future<void> runForword() async {
    for (int findex = 0; findex <= count; findex++) {
      await Future.delayed(const Duration(milliseconds: duration));
      emit(KnightriderRunning(
          count: count, high: findex, mid: findex - 1, low: findex - 2));
    }
    emit(KnightriderFowordEnd());
  }

  Future<void> runBackword() async {
    for (int bindex = count + 1; bindex >= 0; bindex--) {
      await Future.delayed(const Duration(milliseconds: duration));
      emit(KnightriderRunning(
          count: count, high: bindex, mid: bindex + 1, low: bindex + 2));
    }
    emit(KnightriderBackwordEnd());
  }
}
