import 'package:flutter/material.dart';
import '../routes.dart';
import 'blue_tab/blue_tab.dart';
import 'bottom_bar.dart';
import 'green_tab/green_tab.dart';
import 'red_tab/red_tab.dart';

class Multitab extends StatefulWidget {
  @override
  _MultitabState createState() => _MultitabState();
}

class _MultitabState extends State<Multitab> {
  TabItem currentTab = TabItem.red;

  Map<TabItem, Widget> navigatorPage = {
    TabItem.red: RedTab(),
    TabItem.green: GreenTab(),
    TabItem.blue: BlueTab(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        _buildOffstageNavigator(TabItem.red),
        _buildOffstageNavigator(TabItem.green),
        _buildOffstageNavigator(TabItem.blue),
      ]),
      bottomNavigationBar: BottomBar(
        currentTab: currentTab,
        onTabChange: (tabItem) {
          setState(() {
            currentTab = tabItem;
          });
        },
        onReturn: () {
          Navigator.pushNamed(context, Routes.home);
        },
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child: navigatorPage[tabItem],
    );
  }
}
