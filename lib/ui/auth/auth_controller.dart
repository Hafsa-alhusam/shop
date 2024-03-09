import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/ui/res/routes.dart';

class AuthController extends GetxController {
  static late PageController _pageController;

  static PageController get controller => _pageController;

  @override
  void onInit() => {_pageController = PageController(), super.onInit()};

  static void onPressed(String route) {
    switch (route.toLowerCase()) {
      case "sign up":
        _pageController.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
      case "sign in":
        _pageController.previousPage(
            duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
    }
  }

  static void forget() => _pageController.page == 0
      ? _pageController.jumpToPage(2)
      : _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);

  static void outlinedButton() {
    _pageController.page! < 2
        ? Get.offNamed(AppRoutes.onboarding)
        : _pageController.page == 2
            ? _pageController.jumpToPage(0)
            : _pageController.previousPage(
                duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }

  static void alertDialog() => _pageController.page == 4
      ? _pageController.jumpToPage(0)
      : _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);

  // static AppBar getAppBar() {
  //   return _pageController.hasClients
  //       ? _pageController.page! > 1
  //           ? AppBar(
  //               title: const Text("data"),
  //               leading: const Icon(Icons.arrow_back_ios_new_rounded),
  //             )
  //           : AppBar()
  //       : AppBar();
  // }

  @override
  void dispose() => {_pageController.dispose(), super.dispose()};
}
