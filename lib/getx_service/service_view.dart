import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:playground/getx_service/settings_service.dart';

class Example extends GetView<SettingsService> {
  //final controller = Get.find<SettingsService>();
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Service"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Tapped ${controller.counter} times")),
            ElevatedButton(
                onPressed: () {
                  controller.incrementCounter();
                },
                child: const Text('Tap me')),
          ],
        ),
      ),
    );
  }
}
