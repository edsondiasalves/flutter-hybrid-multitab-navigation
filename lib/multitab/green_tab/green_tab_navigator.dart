import 'package:flutter/material.dart';

import 'green_details_page.dart';
import 'green_list_page.dart';

class GreenTabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class GreenTabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: GreenTabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) {
          switch (routeSettings.name) {
            case GreenTabNavigatorRoutes.root:
              return GreenColorsListPage(
                onPush: (materialIndex) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GreenDetailPage(materialIndex),
                  ),
                ),
              );
            case GreenTabNavigatorRoutes.detail:
              return GreenDetailPage(500);
          }
          return null;
        });
      },
    );
  }
}
