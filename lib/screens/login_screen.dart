import 'package:flutter/material.dart';
import 'package:indecisive/dummy_data.dart';
import 'package:indecisive/models/user.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  // playerList from dummay_data.dart
  var listOfUsers = playerList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('inDECISIVE'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Column(
            children: [
              Text('Login'),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      // TODO add other validations
                      //controller: ,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a valid email';
                        }
                      },
                      decoration: const InputDecoration(
                          labelText: 'email', hintText: 'Enter a valid email'),
                    ),
                    TextFormField(
                      obscureText: true,
                      // TODO add other validations
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a valid password';
                        }
                      },
                      decoration: const InputDecoration(
                          labelText: 'password',
                          hintText: 'Enter a valid password'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('First time user? Click '),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/create_account');
                          },
                          child: Text('HERE!'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      onPressed: () {
                        // for testing: if valid move to the next screen
                        if (_formKey.currentState.validate()) {
                          // check if everything is validated properly
                          // TODO authenticate user
                          // Navigate to main menu
                          Navigator.pushNamed(context, '/home');
                        }
                      },
                      child: Text('Submit'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
