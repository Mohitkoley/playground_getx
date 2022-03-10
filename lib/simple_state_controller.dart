import 'package:get/get.dart';

class Controller extends GetxController {
  //with static method: Controller.to.increment()
  //with no static method : Get.find<Controller>().increment()
  static Controller get to => Get.find();
  int counter = 0;
  final name = "Rockey".obs;
  void increament() {
    counter++;
    update();
  }
}
