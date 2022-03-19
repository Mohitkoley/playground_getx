import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground/theme/themes_controller.dart';

class Example extends StatelessWidget {
  Example({Key? key}) : super(key: key);

  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme Example')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('GetX theme', style: TextStyle(fontSize: 22)),
        const SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              if (Get.isDarkMode) {
                //change the ThemeMode to light mode
                themeController.changeThemeMode(ThemeMode.light);
                // // change the theme to light theme
                //themeController.changeTheme(Themes.lightTheme);
                themeController.saveTheme(false); //writing to storage
              } else {
                //change the ThemeMode to dark mode
                themeController.changeThemeMode(ThemeMode.dark);
                // // change the theme to dark theme
                //themeController.changeTheme(Themes.darkTheme);
                themeController.saveTheme(true);
              }
            },
            child: Text("change Theme"))
      ])),
    );
  }
}
