import 'package:get/get.dart';

import '../screen/onbording/Onboarding_controller.dart';
import '../screen/splash_screen/splash_view_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() => Get.put<SplashController>(SplashController());
}

class OnboardingBinding extends Bindings {
  @override
  void dependencies() => Get.put<OnboardingController>(OnboardingController());
}

class LoginBinding extends Bindings {
  @override
  void dependencies() => Get.put<OnboardingController>(OnboardingController());
}
