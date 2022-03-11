import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground/translation/message.dart';
import 'package:playground/translation/translation_view.dart';

class Translation extends StatelessWidget {
  const Translation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Message(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      home: Example(),
    );
  }
}
