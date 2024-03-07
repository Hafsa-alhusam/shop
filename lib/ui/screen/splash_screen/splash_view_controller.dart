import 'dart:async';

import 'package:get/get.dart';

import '../../res/routes.dart';

class SplashController extends GetxController {
  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    _startTimer();
  }

  void _startTimer() =>
      _timer = Timer(const Duration(seconds: 3), () => _goNextPage());

  void _goNextPage() => Get.offNamed(AppRoutes.onboarding);

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
