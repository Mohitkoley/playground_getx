import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:playground/getx_controller/view.dart';
import 'package:playground/getx_service/service_example.dart';
import 'package:playground/getx_service/settings_service.dart';
import 'package:playground/reactive_state_mangement.dart';
import 'package:playground/simple_state_mangement.dart';
import 'package:playground/theme/themes_example.dart';

import 'translation/translation_example.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  //await GetStorage.init();
  runApp(const MyApp());
}

Future<void> initServices() async {
  debugPrint('starting services...');
  //here is where you put  get_storage, hive, shared_preferences, etc
  // or moor connection ,or whatever that's async
  await Get.putAsync(() => SettingsService().init());
  debugPrint('services started');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ServiceExample();
  }
}
