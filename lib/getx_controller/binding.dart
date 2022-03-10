import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground/getx_controller/controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<Controller>(() => Controller());
  }
}
