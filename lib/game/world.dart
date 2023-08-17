import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_tiled/flame_tiled.dart';

class World extends FlameGame {
  @override
  Future<void> onLoad() async {
    await Flame.device.fullScreen();
    final worldTile = await TiledComponent.load('world.tmx', Vector2.all(16));
    add(worldTile);
    super.onLoad();
  }
}