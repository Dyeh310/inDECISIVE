import 'package:indecisive/models/game.dart';
import 'package:indecisive/models/user.dart';

var DUMMY_DATA_PLAYER = [
  User(id: 'U1432423', userName: 'Nick', password: 'pass321'),
  User(id: 'U1435431', userName: 'Anny', password: 'pass321'),
  User(id: 'U3242312', userName: 'Chase', password: 'pass321',
      // Games associated with that player
      games: [
        Game(name: 'Dying Light'),
        Game(name: 'Vermintide', isCompleted: true)
      ]),
];
