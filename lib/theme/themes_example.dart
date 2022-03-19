import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:playground/theme/themes.dart';
import 'package:playground/theme/themes_controller.dart';
import 'package:playground/theme/themes_view.dart';

class ThemeExample extends StatelessWidget {
  final themeController = Get.put(ThemeController());
  ThemeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //change thememMode instead of Theme
      themeMode: themeController.themeMode,
      darkTheme: Themes.darkTheme,
      theme: Themes.lightTheme,
      home: Example(),
    );
  }
}
