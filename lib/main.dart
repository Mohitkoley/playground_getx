import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:playground/getx_controller/view.dart';
import 'package:playground/reactive_state_mangement.dart';
import 'package:playground/simple_state_mangement.dart';
import 'package:playground/theme/themes_example.dart';

import 'translation/translation_example.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeExample();
  }
}
