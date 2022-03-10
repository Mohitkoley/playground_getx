import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  final count = 0.obs;

  increment() {
    count.value++;
  }

  @override
  void onInit() {
    super.onInit();
    debugPrint("Controller onInit has been called");
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint("Controller onReady has been called");
  }

  @override
  void onClose() {
    debugPrint("Controller onClose has been called");
    super.onClose();
  }
}
