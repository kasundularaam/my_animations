import 'package:my_animations/data/models/my_animation.dart';
import 'package:my_animations/data/my_animations_data.dart';

class AnimationsRepo {
  static List<MyAnimation> getAnimations() {
    List<MyAnimation> animations = [];
    MyAnimationsData.myAnimations.map((anim) {
      Map<String, String> animData = anim;
      animations.add(MyAnimation.fromMap(animData));
    }).toList();
    return animations;
  }
}
