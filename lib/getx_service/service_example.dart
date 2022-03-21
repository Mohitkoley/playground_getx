import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:playground/getx_service/service_view.dart';

class ServiceExample extends StatelessWidget {
  const ServiceExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Example(),
    );
  }
}
