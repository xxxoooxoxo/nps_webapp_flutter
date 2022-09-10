import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/routing/routes.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import 'custom_text.dart';
import 'side_menu_items.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: grey,
        border: Border(
          left: BorderSide(width: 2, color: dark.withOpacity(.2)),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomText(
              text: "Locations",
              size: 24,
              weight: FontWeight.w600,
            ),
          ),
          if (Responsive.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      //child: Image.asset("assets/icons/logo.png"),
                    ),
                    const Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItem(
                    itemName: itemName,
                    onTap: () {
                      // if (item.route == authenticationPageRoute) {
                      //   Get.offAllNamed(authenticationPageRoute);
                      //   menuController.changeActiveItemTo(overViewPageRoute);
                      // }
                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                        if (Responsive.isSmallScreen(context)) Get.back();
                        navigationController.navigateTo(itemName);
                      }
                    }))
                .toList(),
          )
        ],
      ),
    );
  }
}
