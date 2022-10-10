import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  static NavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navigationKey = GlobalKey();
  var isMain = true.obs;

  Future<dynamic> navigateTo(String routeName) {
    isMain.value = false;
    return navigationKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic> specialNavigateTo(String routeName) {
    return navigationKey.currentState!.pushNamed(routeName);
  }

  goBack() {
    isMain.value = true;
    navigationKey.currentState!.pop();
  }
}
