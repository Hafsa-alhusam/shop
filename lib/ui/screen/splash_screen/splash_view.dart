import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../res/image_assets.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset(Assets.imagesLogo)),
    );
  }
}
