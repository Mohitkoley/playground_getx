import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user.dart';

class ReactiveStateMangement extends StatelessWidget {
  ReactiveStateMangement({Key? key}) : super(key: key);

  // final name = RxString('');
  // final isLogged = RxBool(false);
  // final count = RxInt(0);
  // final balance = RxDouble(0.0);
  // final items = RxList<String>;
  // final myMap = RxMap<String, int>({});
  ////2nd type to declare a get Rx type data
  // final isLogged = Rx<bool>(false);
  // final name = Rx<String>("");
  // final count = Rx<int>(0);
  // final balance = Rx<double>(0.0);
  // final number = Rx<List<int>>([]);
  // final myMap = Rx<Map<String, int>>({});
  // //Custom Classes with Rx
  // final user = Rx<User>(User(name: "Rockey", age: 22));
  final name = ''.obs;
  final isLogged = false.obs;
  final count = 0.obs;
  final balance = 0.0.obs;
  final number = 0.obs;
  final items = <String>[].obs;
  final myMap = <String, int>{}.obs;
  final user = User(name: 'Rockey', age: 30).obs;
  // Using .obs for custom classes
  //final user = User();

  int increment() {
    int count1;
    count1 = count.value++;
    return count1;
  }

  void decrement() {
    if (count.value > 0)
      count.value--;
    else
      Get.snackbar(
        "Value",
        "Value Can't be less then Zero",
        barBlur: 3.0,
        titleText: Text("Error"),
        isDismissible: true,
        colorText: Colors.red,
      );
  }

  void toUpper() {
    var val = increment();
    user.update((user) {
      val.isEven
          ? user!.name = user.name.toUpperCase()
          : user!.name = user.name.toLowerCase();
      user.age = user.age + 1;
    });
    //2.alternative way to update the value
    //user(User(name: "MUNDU"));
    // val.isOdd
    //     ? user.name.value = user.name.value.toUpperCase()
    //     : user.name.value = user.name.value.toLowerCase();
    // user.age.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("$count",
                  style: TextStyle(
                    fontSize: 28,
                  ))),
              SizedBox(width: 10),
              Obx(() => Text(
                  //"${user.name} ${user.age}",
                  "${user.value.name} ${user.value.age}",
                  style: TextStyle(
                    fontSize: 28,
                  )))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: increment,
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: decrement,
              child: Icon(Icons.remove),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: toUpper,
              child: Icon(Icons.arrow_upward),
            )
          ],
        ));
  }
}
