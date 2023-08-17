import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'game/world.dart';

void main() {
  runApp(const MyApp());
}

final _game = World();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: GameWidget(game: _game),
      ),
    );
  }
}
