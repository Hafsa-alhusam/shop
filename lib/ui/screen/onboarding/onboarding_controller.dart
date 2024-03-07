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

  void continueButton() {
    if (pageController.page == pages.length) {
      Get.offNamed(AppRoutes.login);
    }
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

class OnboardingModel {
  final String title;
  final String image;
  final String description;
  OnboardingModel(
      {required this.description, required this.image, required this.title});

  factory OnboardingModel.fromMap(Map<String, dynamic> data) => OnboardingModel(
      description: data['description'],
      title: data['title'],
      image: data['image']);
}
