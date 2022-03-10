import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground/getx_controller/class.dart';
import 'package:playground/getx_controller/controller.dart';

class DetailPage extends StatelessWidget {
  // OR final controller = Get.<Controller>find();
  Controller controller = Get.find();
  //final controller2 = Get.find<Controller>();
  //final child = Get.find<Parent>();
  DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //debugPrint("is Child? ${child is Child}");
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(() => Text("${controller.count.value}",
            //     style: TextStyle(fontSize: 30))),
            Obx(() => Text("${controller.count.value}",
                style: TextStyle(fontSize: 30))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        child: Icon(Icons.add),
        tooltip: "tap to increment",
      ),
    );
  }
}
