import 'package:flutter/material.dart';
import 'package:nps_webapp/constants/controllers.dart';
import 'package:nps_webapp/routing/router.dart';
import 'package:nps_webapp/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: overViewPageRoute,
      onGenerateRoute: generateRoute,
    );
