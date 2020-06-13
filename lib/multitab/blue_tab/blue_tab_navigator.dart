import 'package:flutter/material.dart';

import 'blue_details_page.dart';
import 'blue_list_page.dart';

class BlueTabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class BlueTabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: BlueTabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) {
          switch (routeSettings.name) {
            case BlueTabNavigatorRoutes.root:
              return BlueColorsListPage(
                onPush: (materialIndex) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlueDetailPage(materialIndex),
                  ),
                ),
              );
            case BlueTabNavigatorRoutes.detail:
              return BlueDetailPage(500);
          }
          return null;
        });
      },
    );
  }
}
