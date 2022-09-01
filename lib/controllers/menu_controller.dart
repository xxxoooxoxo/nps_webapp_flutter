import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nps_webapp/routing/routes.dart';
import '../constants/style.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overViewPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) {
    return activeItem.value == itemName;
  }

  isHovering(String itemName) {
    return hoverItem.value == itemName;
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overViewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case driversPageRoute:
        return _customIcon(Icons.drive_eta, itemName);
      case clientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
