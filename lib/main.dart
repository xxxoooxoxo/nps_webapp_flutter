import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nps_webapp/controllers/influx_controller_alpha.dart';
import 'package:nps_webapp/controllers/influx_controller_beta.dart';
import 'package:nps_webapp/controllers/influx_controller_delta.dart';
import 'package:nps_webapp/controllers/influx_controller_epsilon.dart';
import 'package:nps_webapp/controllers/influx_controller_eta.dart';
import 'package:nps_webapp/controllers/influx_controller_gamma.dart';
import 'package:nps_webapp/controllers/influx_controller_iota.dart';
import 'package:nps_webapp/controllers/influx_controller_theta.dart';
import 'package:nps_webapp/controllers/influx_controller_zeta.dart';
import 'package:nps_webapp/site_layout.dart';
import 'package:nps_webapp/views/map_view.dart';
import 'controllers/menu_controller.dart';
import 'controllers/navigation_controller.dart';

void main() {
  Get.put(CustomMenuController());
  Get.put(NavigationController());
  Get.put(InfluxControllerTheta());
  Get.put(InfluxControllerAlpha());
  Get.put(InfluxControllerBeta());
  Get.put(InfluxControllerEpsilon());
  Get.put(InfluxControllerDelta());
  Get.put(InfluxControllerEta());
  Get.put(InfluxControllerZeta());
  Get.put(InfluxControllerIota());
  Get.put(InfluxControllerGamma());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Networked Public Space | Node Dashboard',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0x00000000,
          <int, Color>{
            50: Color(0xFFFAFAFA),
            100: Color(0xFFF5F5F5),
            200: Color(0xFFEEEEEE),
            300: Color(0xFFE0E0E0),
            350: Color(
                0xFFD6D6D6), // only for raised button while pressed in light theme
            400: Color(0xFFBDBDBD),
            500: Color(0xFF9E9E9E),
            600: Color(0xFF757575),
            700: Color(0xFF616161),
            800: Color(0xFF424242),
            850: Color(0xFF303030), // only for background color in dark theme
            900: Color(0xFF212121),
          },
        ),
        appBarTheme: const AppBarTheme(color: Colors.black),
        fontFamily: GoogleFonts.openSans().fontFamily,
        scaffoldBackgroundColor: Colors.white,
        textTheme:
            GoogleFonts.openSansTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.black,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
        }),
      ),
      home: SiteLayout(),
    );
  }
}
