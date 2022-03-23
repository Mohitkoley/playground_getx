import 'package:get/get.dart';

class CartController extends GetxController {
  final totalItem = 0.obs;
  void increment() => totalItem.value++;
  void decrement() => totalItem.value--;
}
