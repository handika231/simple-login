//key navigation
import 'package:flutter/material.dart';
import 'package:simple_login/presentation/page/login_view.dart';

import '../page/home_view.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final routes = {
  HomeView.routeName: (_) => const HomeView(),
  LoginView.routeName: (_) => const LoginView(),
};

class Navigation {
  static Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  static Future pushWithData(String routeName, Object arguments) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  static void goBack() {
    return navigatorKey.currentState!.pop();
  }
}
