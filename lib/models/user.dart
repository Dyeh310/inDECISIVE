import 'package:flutter/foundation.dart';
import 'package:indecisive/models/game.dart';

class User {
  final String id;
  final String userName;
  final String password;
  List<Game> games = [];

  User({
    @required this.id,
    @required this.userName,
    @required this.password,
    this.games,
  });
}
