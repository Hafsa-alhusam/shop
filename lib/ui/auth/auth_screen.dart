import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shop/data/auth_data.dart';
import 'package:shop/ui/auth/auth_controller.dart';

import '../res/app_colors.dart';
import '../res/image_assets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: PageView.builder(
          itemCount: authData.length,
          controller: AuthController.controller,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Stack(
            children: [
              // Back Button
              Padding(
                padding: const EdgeInsets.all(35),
                child: OutlinedButton(
                  onPressed: () => AuthController.outlinedButton(),
                  child: const Icon(Icons.arrow_back),
                ),
              ),

              // Logo
              Padding(
                padding: const EdgeInsets.only(top: 110, left: 150),
                child: SvgPicture.asset(Assets.imagesLogo),
              ),

              // Black Bottom Sheet
              Positioned(
                bottom: 0,
                child: SingleChildScrollView(
                  child: Container(
                    height: 600,
                    width: Get.width,
                    decoration: const BoxDecoration(
                      color: AppColor.black,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        textBaseline: TextBaseline.ideographic,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(authData[index]['title'],
                              style: Theme.of(context).textTheme.titleLarge),
                          Text(authData[index]['description'],
                              style: Theme.of(context).textTheme.labelLarge),
                          ...authData[index]['content'],
                        ],
                      ),
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
