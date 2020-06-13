import 'package:flutter/material.dart';

import 'red_details_page.dart';
import 'red_list_page.dart';

class RedTabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class RedTabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: RedTabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) {
          switch (routeSettings.name) {
            case RedTabNavigatorRoutes.root:
              return RedColorsListPage(
                onPush: (materialIndex) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RedDetailPage(materialIndex),
                  ),
                ),
              );
            case RedTabNavigatorRoutes.detail:
              return RedDetailPage(500);
          }
          return null;
        });
      },
    );
  }
}
