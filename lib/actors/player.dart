import 'dart:async';

import 'package:flame/components.dart';

// SpriteAnimationGroupComponent used because we have player which will perform group of animations and it'll make easy switching between them
class Player extends SpriteAnimationGroupComponent {
  late final SpriteAnimation idleAnimation;

  @override
  FutureOr<void> onLoad() {
    _loadAllAnimations();
    return super.onLoad();
  }

  void _loadAllAnimations() {}
}
