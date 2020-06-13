import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Colors.grey,
                textColor: Colors.black,
                child: Text('Click to Intro'),
                onPressed: () {
                  Navigator.pushNamed(context, '/intro');
                },
              ),
              SizedBox(
                width: 20,
              ),
              FlatButton(
                color: Colors.grey,
                textColor: Colors.black,
                child: Text('Click to Multitab'),
                onPressed: () {
                  Navigator.pushNamed(context, '/multitab');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
