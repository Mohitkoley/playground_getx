import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground/getx_controller/view.dart';
import 'package:playground/reactive_state_mangement.dart';
import 'package:playground/simple_state_mangement.dart';

import 'translation/translation_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Translation();
  }
}
