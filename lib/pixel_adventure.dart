import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:pixel_adventure/levels/level.dart';
// import 'dart:ui';

class PixelAdventure extends FlameGame {
  @override
  Color backgroundColor() => const Color(0xFF211F30);
  late final CameraComponent cam;
  final myWorld = Level();

  @override
  FutureOr<void> onLoad() async {
    //loading images into cache
    await images.loadAllImages();

    cam = CameraComponent.withFixedResolution(
        world: myWorld, width: 640, height: 360);
    cam.viewfinder.anchor = Anchor.topLeft;

    addAll([cam, myWorld]);

    return super.onLoad();
  }
}
