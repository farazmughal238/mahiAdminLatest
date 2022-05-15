import 'package:flutter/material.dart';

class NavigationService {

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  Future<dynamic> push(Widget widget) {
    return navigatorKey.currentState!.push(MaterialPageRoute(builder: (context) => widget));
  }

  Future<dynamic> pushAndRemoveUntil(Widget widget) {
    return navigatorKey.currentState!.pushAndRemoveUntil(MaterialPageRoute(builder: (context) => widget), (route) => false);
  }

  Future<dynamic> pushReplacement(Widget widget) {
    return navigatorKey.currentState!.pushReplacement(MaterialPageRoute(builder: (context) => widget));
  }
}