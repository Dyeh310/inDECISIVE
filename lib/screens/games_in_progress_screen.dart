import 'package:flutter/material.dart';

import '../dummy_data.dart';

class GamesInProgressScreen extends StatefulWidget {
  @override
  _GamesInProgressScreenState createState() => _GamesInProgressScreenState();
}

class _GamesInProgressScreenState extends State<GamesInProgressScreen> {
  // get the current logged in player

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('inDECISIVE'),
          centerTitle: true,
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(10.0),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  //
                  // chance to be picked
                  );
            }));
  }
}
