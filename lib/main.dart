import 'package:flutter/material.dart';
import 'package:indecisive/screens/completed_games_screen.dart';
import 'package:indecisive/screens/create_account_screen.dart';
import 'package:indecisive/screens/games_in_progress_screen.dart';
import 'package:indecisive/screens/home_screen.dart';
import 'package:indecisive/screens/login_screen.dart';
import 'package:indecisive/screens/pick_game_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'inDECISIVE',
        theme: ThemeData(
          primarySwatch: Colors.green,
          // accentColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          // TODO add text theme
          textTheme: TextTheme(),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/home': (context) => HomeScreen(),
          '/create_account': (context) => CreateAccountScreen(),
          '/pick_games': (context) => PickGamesScreen(),
          '/games_in_progress': (context) => GamesInProgressScreen(),
          '/completed_games': (context) => CompletedGamesScreen(),
        });
  }
}
