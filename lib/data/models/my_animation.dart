import 'dart:convert';

class MyAnimation {
  final String animationId;
  final String animationName;
  final String animationRout;
  MyAnimation({
    required this.animationId,
    required this.animationName,
    required this.animationRout,
  });

  MyAnimation copyWith({
    String? animationId,
    String? animationName,
    String? animationRout,
  }) {
    return MyAnimation(
      animationId: animationId ?? this.animationId,
      animationName: animationName ?? this.animationName,
      animationRout: animationRout ?? this.animationRout,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'animationId': animationId,
      'animationName': animationName,
      'animationRout': animationRout,
    };
  }

  factory MyAnimation.fromMap(Map<String, dynamic> map) {
    return MyAnimation(
      animationId: map['animationId'],
      animationName: map['animationName'],
      animationRout: map['animationRout'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MyAnimation.fromJson(String source) =>
      MyAnimation.fromMap(json.decode(source));

  @override
  String toString() =>
      'MyAnimation(animationId: $animationId, animationName: $animationName, animationRout: $animationRout)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyAnimation &&
        other.animationId == animationId &&
        other.animationName == animationName &&
        other.animationRout == animationRout;
  }

  @override
  int get hashCode =>
      animationId.hashCode ^ animationName.hashCode ^ animationRout.hashCode;
}
