import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  //get the instance of get storage
  final _box = GetStorage();
  final _key = 'isDarkMode';

  void saveTheme(bool isDarkMode) => _box.write(_key, isDarkMode);
  bool _loadTheme() => _box.read(_key) ?? false;
  ThemeMode get themeMode => _loadTheme() ? ThemeMode.dark : ThemeMode.light;
  void changeTheme(ThemeData theme) => Get.changeTheme(theme);
  void changeThemeMode(ThemeMode themeMode) =>
      Get.changeThemeMode(themeMode); //change the theme mode
}
