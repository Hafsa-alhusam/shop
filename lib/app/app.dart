import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../ui/res/binding.dart';
import '../ui/res/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shop',
      debugShowCheckedModeBanner: false,
      
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.splash,
      initialBinding: SplashBinding(),
    );
  }
}
