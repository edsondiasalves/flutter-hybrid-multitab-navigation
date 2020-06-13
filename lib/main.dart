import 'package:fluent_multi_tab_navigation/intro/intro.dart';
import 'package:fluent_multi_tab_navigation/multitab/multitab.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';
import 'routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => Home(),
        Routes.intro: (context) => Intro(),
        Routes.multitab: (context) => Multitab(),
      },
    );
  }
}
