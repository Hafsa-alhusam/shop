import 'package:get/get.dart';
import 'package:shop/ui/screen/signin/signin_view.dart';
import 'package:shop/ui/screen/onboarding/onboarding_view.dart';
import '../screen/splash_screen/splash_view.dart';
import 'binding.dart';

class AppRoutes {
  AppRoutes._();

  static const String splash = "/";
  static const String onboarding = "/onboarding";
  static const String signin = "/signin";

  static List<GetPage<dynamic>>? routes = [
    GetPage(name: splash, page: () => const SplashView()),
    GetPage(
        name: onboarding,
        page: () => const OnboardingView(),
        binding: OnboardingBinding()),
    GetPage(
        name: signin,
        page: () => const SignView(),
        binding: OnboardingBinding()),
  ];
}
