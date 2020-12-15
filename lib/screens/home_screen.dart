import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('inDECISIVE'),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
              child: Column(
            children: [
              Text('Hey, User'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Games in progress button
                  RaisedButton(
                    // send user to in progress page
                    onPressed: () {
                      Navigator.pushNamed(context, '/games_in_progress');
                    },
                    child: Text('Games In Progress'),
                  ),
                  // Randomly Pick A Game that is currently in Progress
                  RaisedButton(
                    // send user to pick a game page
                    onPressed: () {
                      Navigator.pushNamed(context, '/pick_games');
                    },
                    child: Text('Pick'),
                  ),
                  // Shows a list of games we have completed together
                  RaisedButton(
                      // send user to completed games page
                      onPressed: () {
                        Navigator.pushNamed(context, '/completed_games');
                      },
                      child: Text('Completed'))
                ],
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ],
          )),
        ));
  }
}
