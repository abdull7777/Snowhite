import 'package:flutter/material.dart';
import 'main.dart';
import 'login.dart';

class PageRouteee {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );

      case 'homepage':
        return MaterialPageRoute(builder: (_) => const Wrld_Shp());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
