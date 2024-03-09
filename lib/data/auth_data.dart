import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../ui/auth/auth_controller.dart';
import '../ui/res/image_assets.dart';

import '../ui/res/app_colors.dart';
import '../ui/widget/auth_widget.dart';

List<Map<String, dynamic>> authData = [
  //Sign In
  {
    "title": "Welcome Back!",
    "description": "Enter your details below",
    "content": [
      const TextFieldTheme(hintText: "Mobile Number", icon: Icons.phone),
      const TextFieldTheme(hintText: "Password", icon: Icons.remove_red_eye),
      ElevatedButton(onPressed: () {}, child: const Text("Sign In")),
      const CustomQuestion(text1: "Don`t have an account?", text2: "Sign Up"),
      TextButton(
          onPressed: () => AuthController.forget(),
          child: Text("Forget Password", style: Theme.of(Get.context!).textTheme.labelMedium)),
    ]
  },
  //Sign Up
  {
    "title": "Get Started",
    "description": "Enter your details below",
    "content": [
      const TextFieldTheme(hintText: "Mobile Number", icon: Icons.phone),
      const TextFieldTheme(hintText: "Password", icon: Icons.remove_red_eye),
      const TextFieldTheme(hintText: "Confirm Password ", icon: Icons.remove_red_eye),
      ElevatedButton(onPressed: () {}, child: const Text("Sign up")),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const LineSignUp(),
        Text(" Or Continuo with ", style: Theme.of(Get.context!).textTheme.labelMedium),
        const LineSignUp()
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        OutlinedButton(
            style: OutlinedButton.styleFrom(minimumSize: const Size(170, 50)),
            onPressed: () {},
            child: SvgPicture.asset(Assets.imagesGoogle)),
        const SizedBox(width: 15),
        OutlinedButton(
            style: OutlinedButton.styleFrom(minimumSize: const Size(170, 50)),
            onPressed: () {},
            child: SvgPicture.asset(Assets.imagesIos)),
      ]),
      const CustomQuestion(text1: "Already have an account?", text2: "Sign In")
    ]
  },
  //forget
  {
    "title": "Reseat your password",
    "description": "We need phone number so we can send you the password reset code",
    "content": [
      const TextFieldTheme(hintText: "Mobile Number", icon: Icons.phone),
      ElevatedButton(onPressed: () => AuthController.forget(), child: const Text("Send")),
    ]
  },
  //verification code
  {
    "title": "Verification Code",
    "description": "You need to enter 4-digit code we send to your Phone number.",
    "content": [
      OtpTextField(
          margin: const EdgeInsets.all(10),
          enabledBorderColor: AppColor.grey,
          cursorColor: AppColor.lite_green,
          borderColor: AppColor.lite_green,
          borderWidth: 0.7,
          fieldWidth: 69,
          borderRadius: BorderRadius.circular(16),
          numberOfFields: 4,
          showFieldAsBox: true),
      ElevatedButton(onPressed: () => AuthController.forget(), child: const Text("Sign In")),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Didn't get the code yet ?", style: Theme.of(Get.context!).textTheme.labelLarge),
          Text(" Resend (0:35)", style: Theme.of(Get.context!).textTheme.labelMedium)
        ],
      )
    ]
  },
  //Rest your password
  {
    "title": "Create New Password",
    "description": "Create new password , please don`t forget password this one too",
    "content": [
      const TextFieldTheme(hintText: "Password", icon: Icons.phone),
      const TextFieldTheme(hintText: "Confirm Password", icon: Icons.remove_red_eye),
      ElevatedButton(
          onPressed: () {
            Get.dialog(AlertDialog(
              title: Text("Password has been updated",
                  textAlign: TextAlign.center, style: Theme.of(Get.context!).textTheme.bodyLarge),
              content: Text("Please press sign in to continue",
                  textAlign: TextAlign.center, style: Theme.of(Get.context!).textTheme.labelLarge),
              actions: [
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16)),
                      onPressed: () {
                        Get.back();
                        AuthController.alertDialog();
                      },
                      child: const Text("Sign In")),
                )
              ],
            ));
          },
          child: const Text("Create")),
    ]
  },
];
