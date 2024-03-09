import 'package:get/get.dart';

import '../auth/auth_screen.dart';
import '../onboarding/onboarding_view.dart';
import '../splash_screen/splash_view.dart';
import 'binding.dart';

class AppRoutes {
  AppRoutes._();

  static const String splash = "/";
  static const String auth = "/authentication";
  static const String onboarding = "/onboarding";

  static List<GetPage<dynamic>>? routes = [
    GetPage(name: splash, page: () => const SplashView()),
    GetPage(name: auth, page: () => const AuthScreen(), binding: AuthBinding()),
    GetPage(name: onboarding, page: () => const OnboardingView(), binding: OnboardingBinding()),
  ];
}
