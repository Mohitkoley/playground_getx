import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground/translation/translation_controller.dart';

class Example extends StatelessWidget {
  Example({Key? key}) : super(key: key);

  final messageController = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    var products = <String>[];
    return Scaffold(
      appBar: AppBar(title: Text("Translation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("hello".tr, style: TextStyle(fontSize: 30)),
            const SizedBox(height: 20),
            Text("logged in".trParams(
                {"name": "Rockey", 'email': 'rockeysingh5h@gmail.com'})),
            ElevatedButton(
              onPressed: () => messageController.changeLanguage('en', 'US'),
              child: Text("English"),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
