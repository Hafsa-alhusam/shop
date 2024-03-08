import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    _pageController.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }

  @override
  void dispose() => {_pageController.dispose(), super.dispose()};
}
