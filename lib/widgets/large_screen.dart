import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:nps_webapp/constants/controllers.dart';
import 'package:nps_webapp/helpers/local_navigator.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/routing/routes.dart';
import 'package:nps_webapp/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          children: [
            Expanded(
              flex: 4,
              child: localNavigator(),
            ),
            if (Responsive.isLargeScreen(context) &&
                !navigationController.isMain.value)
              const Expanded(
                child: SideMenu(),
              ),
          ],
        ));
  }
}
