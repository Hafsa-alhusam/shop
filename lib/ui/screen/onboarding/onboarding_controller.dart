import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/data_onboarding.dart';
import '../../res/routes.dart';

class OnboardingController extends GetxController {
  final List<OnboardingModel> pages =
      onboardingData.map((map) => OnboardingModel.fromMap(map)).toList();

  late PageController pageController;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
  //

  void continueButton() {
    if (pageController.page == pages.length - 1) {
      Get.offNamed(AppRoutes.signin);
    }
  //
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }

  //
  void goToSignin() {
    Get.offNamed(AppRoutes.signin);
  }

  //
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

 //
class OnboardingModel {
  final String title;
  final String image;
  final String description;
  final String button;
  OnboardingModel(
      {required this.description,
      required this.image,
      required this.title,
      required this.button});

  factory OnboardingModel.fromMap(Map<String, dynamic> data) => OnboardingModel(
      description: data['description'],
      button: data['button'],
      title: data['title'],
      image: data['image']);
}
