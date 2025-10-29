import 'dart:developer';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  // Single function to handle all navigation
  void changeIndex({required int index}) {
    try {
      selectedIndex.value = index;
    } catch (e) {
      log("‼️ Error in goTo():$e");
    }
  }

  void func(){}
}

