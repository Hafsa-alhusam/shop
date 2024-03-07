import 'package:get/get.dart';
import '../screen/login/login.dart';
import '../screen/onboarding/Onboarding.dart';
import '../screen/splash_screen/splash_view.dart';
import 'binding.dart';

class AppRoutes {
  AppRoutes._();

  static const String splash = "/";
  static const String onboarding = "/onboarding";
  static const String login = "/login";


  static List<GetPage<dynamic>>? routes = [
    GetPage(name: splash, page: () => const SplashView()),
    GetPage(
        name: onboarding,
        page: () => const OnboardingScreen(),
        binding: OnboardingBinding()),
    GetPage(
      name: login,
      page: () => const Login(),
      binding: OnboardingBinding()
    ),
  ];
}
