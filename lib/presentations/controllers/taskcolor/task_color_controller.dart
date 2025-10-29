import 'package:get/get.dart';

class TaskColorController extends GetxController {
  var isRework = false.obs;
  var isBlue = true.obs; // Default to blue

  void toggleColor() {
    isBlue.value = !isBlue.value;
  }

  void setRework(bool value) {
    isRework.value = value;
  }
}
