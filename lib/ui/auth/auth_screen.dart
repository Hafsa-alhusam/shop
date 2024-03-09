import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../data/auth_data.dart';
import 'auth_controller.dart';

import '../res/app_colors.dart';
import '../res/image_assets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AuthController.getAppBar(),
      body: SizedBox.expand(
        child: PageView.builder(
          itemCount: authData.length,
          controller: AuthController.controller,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Stack(
            children: [
              // Back Button
              Visibility(
                // visible: index < 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: OutlinedButton(
                    child: const Icon(Icons.arrow_back),
                    onPressed: () => AuthController.outlinedButton(),
                  ),
                ),
              ),
              // Logo
              Padding(
                  padding: const EdgeInsets.only(top: 110, left: 150),
                  child: SvgPicture.asset(Assets.imagesLogo)),

              // Black Bottom Sheet
              Positioned(
                bottom: 0,
                child: SingleChildScrollView(
                  child: Container(
                    height: index > 1 ? 485 : 610,
                    width: Get.width,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        color: AppColor.black,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(authData[index]['title'],
                            style: Theme.of(context).textTheme.titleLarge),
                        Text(authData[index]['description'],
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelLarge),
                        ...authData[index]['content'],
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
