import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pixel_adventure/pixel_adventure.dart';
// import 'dart:ui';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); //wait for fluttet to be initialized before calling other stuff
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  PixelAdventure game = PixelAdventure();
  runApp(GameWidget(game: kDebugMode ? PixelAdventure() : game));
}
