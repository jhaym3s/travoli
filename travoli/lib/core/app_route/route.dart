import 'package:flutter/material.dart';

import '../../features/dashboard/dashboard_navigation_bar.dart';


class AppRouter {
  static Route onGenerated(RouteSettings settings) {
    //print("Route name is ${settings.name}");
    switch (settings.name) {
           case CustomNavigationBar.routeName:
        return MaterialPageRoute(
            builder: (_) => const CustomNavigationBar());

      default:
        return onError();
    }
  }

  static Route onError() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body: Center(
                child: Text(
                  "Error Screen",
                  style: Theme.of(_).textTheme.headline1,
                ),
              ),
            ));
  }
}
