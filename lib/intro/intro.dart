import 'package:flutter/material.dart';

import '../routes.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'This is intro page',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            FlatButton(
              color: Colors.grey,
              child: Text(
                'Click to return using navigator',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Routes.home);
              },
            )
          ],
        ),
      ),
    );
  }
}
