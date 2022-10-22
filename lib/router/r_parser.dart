import 'package:flutter/material.dart';

typedef RoutePath = String;

class RouteParser extends RouteInformationParser<RoutePath> {
  @override
  Future<RoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    return routeInformation.location ?? '/';
  }

  @override
  RouteInformation restoreRouteInformation(RoutePath configuration) {
    return RouteInformation(location: configuration);
  }
}