import 'package:flutter/material.dart';
import 'package:nps_webapp/widgets/large_screen.dart';
import 'package:nps_webapp/widgets/side_menu.dart';
import 'package:nps_webapp/widgets/small_screen.dart';
import 'package:nps_webapp/widgets/top_nav.dart';

import 'helpers/responsive.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: const Drawer(
          child: SideMenu(),
          elevation: 0,
        ),
        body: const Responsive(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
