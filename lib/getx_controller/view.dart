import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground/getx_controller/binding.dart';
import 'package:playground/getx_controller/class.dart';
import 'package:playground/getx_controller/controller.dart';
import 'package:playground/getx_controller/detail_page.dart';

class DependencyExample extends StatelessWidget {
  // final controller = Get.put(
  //   Controller(),
  // );
  //final controller2 = Get.put(Controller(), tag: "Unique");
  final parent = Get.put<Parent>(Parent());
  //final child = Get.put<Parent>(Child());
  final child = Get.replace<Parent>(Child());
  DependencyExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // getPages: [
      //   GetPage(
      //     name: '/detail',
      //     page: () => DetailPage(),
      //     binding: DetailsBinding(),
      //     // binding: BindingsBuilder(() {
      //     //   //lazyload a dependency only when is used for this example controller class is initialized when i tap on detail button
      //     //   //Get.lazyPut<Controller>(() => Controller());
      //     //   // Get.putAsync<AsyncTask>(() async {
      //     //   //   await Future.delayed(Duration(seconds: 3));
      //     //   //   return AsyncTask();
      //     //   // });
      //     //   Get.create(() => Controller(), tag: "created");
      //     //   Get.create(() => Controller(), tag: "created2");
      //     // }),
      //   ),
      // ],
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dependency Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Obx(() => Text("${controller.count.value}",
              //     style: TextStyle(fontSize: 28))),
              // Obx(() => Text("${controller2.count.value}",
              //     style: TextStyle(fontSize: 28))),
              ElevatedButton(
                //onPressed: () => Get.toNamed('/detail'),
                onPressed: () => Get.to(
                  '/detail',
                  binding: DetailsBinding(),
                ),
                child: Text("Get to Detail Page"),
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => Get.find<Controller>(tag: "Unique").increment(),
        //   child: Text(
        //     "go to detail Page",
        //     style: TextStyle(fontSize: 18),
        //   ),
        //   tooltip: "Increment",
        // ),
      ),
    );
  }
}
