import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/utils/route.dart';
import 'package:flutter_basic/view/home_view.dart';

class Navigation {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.HomeView:
        return MaterialPageRoute(builder: (_) => HomeView());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(child: Text("No more Route")),
          );
        });
    }
  }
}
