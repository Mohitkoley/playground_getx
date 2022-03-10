import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground/simple_state_controller.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //On Stateless OR Statefull class , Use GetBuilder
            GetBuilder<Controller>(
              init: Controller(),
              builder: (controller) => Text(
                "${controller.counter}",
                style: TextStyle(fontSize: 28),
              ),
            ),
            GetX<Controller>(
                builder: (controller) => Text(controller.name.value)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Controller.to.increament(),
        child: Text("+"),
      ),
    );
  }
}
