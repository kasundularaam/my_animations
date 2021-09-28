part of 'knightrider_cubit.dart';

@immutable
abstract class KnightriderState {}

class KnightriderInitial extends KnightriderState {}

class KnightriderRunning extends KnightriderState {
  final int count;
  final int high;
  final int mid;
  final int low;
  KnightriderRunning({
    required this.count,
    required this.high,
    required this.mid,
    required this.low,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is KnightriderRunning &&
        other.count == count &&
        other.high == high &&
        other.mid == mid &&
        other.low == low;
  }

  @override
  int get hashCode {
    return count.hashCode ^ high.hashCode ^ mid.hashCode ^ low.hashCode;
  }

  @override
  String toString() {
    return 'KnightriderRunning(count: $count, high: $high, mid: $mid, low: $low)';
  }
}

class KnightriderFowordEnd extends KnightriderState {}

class KnightriderBackwordEnd extends KnightriderState {}
