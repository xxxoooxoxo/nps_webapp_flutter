import 'package:flutter/material.dart';
import 'package:nps_webapp/pages/clients/clients.dart';
import 'package:nps_webapp/pages/drivers/drivers.dart';
import 'package:nps_webapp/pages/overview/overview.dart';
import 'package:nps_webapp/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(const OverviewPage());
    case driversPageRoute:
      return _getPageRoute(const DriversPage());
    case clientsPageRoute:
      return _getPageRoute(const ClientsPage());
    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
