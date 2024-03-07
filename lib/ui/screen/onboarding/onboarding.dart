import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../onbording/Onboarding_controller.dart';



class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1e1e1e),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: PageView.builder(
            controller: controller.pageController,
            itemCount: controller.pages.length,
            itemBuilder: ((context, int i) =>
                Stack(alignment: Alignment.topCenter, children: [
                  SizedBox(
                    height: Get.height / 2.6 * 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          controller.pages[i].image,
                          fit: BoxFit.cover,
                          height: 327,
                          width: 327,
                        ),
                        SmoothPageIndicator(
                          controller: controller.pageController,
                          count: 3,
                          effect: const ExpandingDotsEffect(
                              dotColor: Colors.white,
                              dotHeight: 5,
                              dotWidth: 5,
                              activeDotColor: Colors.white,
                              spacing: 10,
                              radius: 20),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30)),
                          color: Color(0xff000000),
                        ),
                        width: Get.width,
                        height: 300,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(controller.pages[i].title),
                              Text(controller.pages[i].description),
                              ElevatedButton(
                                onPressed: () => controller.continueButton(),
                                child: const Text("Next"),
                              ),
                            ])),
                  )
                ]))),
      ),
    );
  }
}
