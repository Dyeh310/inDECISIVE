import 'package:flutter/material.dart';
import 'package:indecisive/models/game.dart';

import '../dummy_data.dart';

class GamesInProgressScreen extends StatefulWidget {
  @override
  _GamesInProgressScreenState createState() => _GamesInProgressScreenState();
}

class _GamesInProgressScreenState extends State<GamesInProgressScreen> {
  // get the current logged in player

  // TODO delete test data
  final games = [
    new Game(
        name: 'Smash Bros Ultimate', isCompleted: false, percentToBePicked: 50),
    new Game(name: 'Dying Light', isCompleted: false, percentToBePicked: 25),
    new Game(
        name: 'Baulder\'s Gate', isCompleted: false, percentToBePicked: 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('inDECISIVE'),
          centerTitle: true,
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  // create a popup with a slide to change the chance the item is picked
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Test!'),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(games[index].name),
                  subtitle: Text((games[index].percentToBePicked).toString()),
                  // chance to be picked
                ),
              );
            }));
  }
}
