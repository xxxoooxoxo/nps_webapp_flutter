import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nps_webapp/routing/routes.dart';
import '../constants/style.dart';

class CustomMenuController extends GetxController {
  static CustomMenuController instance = Get.find();
  var activeItem = alphaPageRoute.obs;
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

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
