import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:samokat/app/data/services/fake_api_services.dart';

import 'app/routes/app_pages.dart';

void main() {
  initServices();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

void initServices() {
  Get.put(FakeApiService());
}
