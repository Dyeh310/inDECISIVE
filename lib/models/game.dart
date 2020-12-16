import 'package:flutter/foundation.dart';

class Game {
  final String name;
  bool isCompleted;
  int percentToBePicked;

  Game(
      {@required this.name,
      this.isCompleted = false,
      this.percentToBePicked = 0});
}
