import 'package:get/get.dart';

import '../auth/auth_controller.dart';
import '../onboarding/onboarding_controller.dart';
import '../splash_screen/splash_view_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() => Get.put<SplashController>(SplashController());
}

class OnboardingBinding extends Bindings {
  @override
  void dependencies() => Get.put<OnboardingController>(OnboardingController());
}

class AuthBinding extends Bindings {
  @override
  void dependencies() => Get.put<AuthController>(AuthController());
}
