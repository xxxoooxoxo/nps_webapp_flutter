import 'package:flutter/material.dart';
import 'package:nps_webapp/views/node_map.dart';
import 'package:nps_webapp/views/overview/alpha_page.dart';
import 'package:nps_webapp/views/overview/beta_page.dart';
import 'package:nps_webapp/views/overview/epsilon_page.dart';
import 'package:nps_webapp/views/overview/gamma_page.dart';
import 'package:nps_webapp/views/overview/iota_page.dart';
import 'package:nps_webapp/views/overview/theta_page.dart';
import 'package:nps_webapp/routing/routes.dart';
import 'package:nps_webapp/views/overview/zeta_page.dart';

import '../views/overview/delta_page.dart';
import '../views/overview/eta_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case alphaPageRoute:
      return _getPageRoute(const AlphaPage());
    case betaPageRoute:
      return _getPageRoute(const BetaPage());
    case epsilonPageRoute:
      return _getPageRoute(const EpsilonPage());
    case deltaPageRoute:
      return _getPageRoute(const DeltaPage());
    case gammaPageRoute:
      return _getPageRoute(const GammaPage());
    case zetaPageRoute:
      return _getPageRoute(const ZetaPage());
    case etaPageRoute:
      return _getPageRoute(const EtaPage());
    case thetaPageRoute:
      return _getPageRoute(const ThetaPage());
    case iotaPageRoute:
      return _getPageRoute(const IotaPage());
    default:
      return _getPageRoute(const NodeMapPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
