import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../res/app_colors.dart';
import 'onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: PageView.builder(
          controller: controller.pageController,
          itemCount: controller.pages.length,
          itemBuilder: ((context, int i) => Stack(alignment: Alignment.topCenter, children: [
                SizedBox(
                  height: Get.height / 2.6 * 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(controller.pages[i].image,
                          fit: BoxFit.cover, height: 327, width: 327),
                      SmoothPageIndicator(
                          controller: controller.pageController,
                          count: 3,
                          effect: const ExpandingDotsEffect(
                              dotColor: AppColor.grey,
                              dotHeight: 5,
                              dotWidth: 5,
                              activeDotColor: AppColor.lite_green,
                              spacing: 10,
                              radius: 20)),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                        color: AppColor.black),
                    width: Get.width,
                    height: 300,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                      Text(controller.pages[i].title,
                          style: Theme.of(context).textTheme.titleLarge),
                      Text(controller.pages[i].description,
                          style: Theme.of(context).textTheme.labelLarge),
                      ElevatedButton(
                          onPressed: () => controller.continueButton(),
                          child: Text(controller.pages[i].button)),
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: Row(
                          children: [
                            Text("Already have an account ?",
                                style: Theme.of(context).textTheme.labelLarge),
                            TextButton(
                                onPressed: () => controller.goToSignin(),
                                child:
                                    Text("Log In", style: Theme.of(context).textTheme.labelMedium)),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}
