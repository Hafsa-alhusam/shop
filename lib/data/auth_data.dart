import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shop/ui/auth/auth_controller.dart';
import 'package:shop/ui/res/image_assets.dart';

import '../ui/res/app_colors.dart';

List<Map<String, dynamic>> authData = [
  {
    "title": "Welcome Back!",
    "description": "Enter your details below",
    "content": [
      const TextField(decoration: InputDecoration(hintText: "")),
      const TextField(),
      ElevatedButton(onPressed: () {}, child: const Text("Log In")),
      const CustomQuestion(text1: "Don`t have an account?", text2: "Sign Up"),
      TextButton(
          onPressed: () => AuthController.forget(),
          child: Text("Forget Password", style: Theme.of(Get.context!).textTheme.labelMedium)),
    ]
  },
  {
    "title": "Get Started",
    "description": "Enter your details below",
    "content": [
      const TextField(),
      const TextField(),
      const TextField(),
      ElevatedButton(onPressed: () {}, child: const Text("Sign up")),
      const Row(children: [Divider(height: 2), Text("Or Continuo with"), Divider(height: 2)]),
      Row(children: [
        OutlinedButton(onPressed: () {}, child: SvgPicture.asset(Assets.imagesGoogle)),
        OutlinedButton(onPressed: () {}, child: SvgPicture.asset(Assets.imagesIos)),
      ]),
      const CustomQuestion(text1: "Already have an account?", text2: "Sign In")
    ]
  },
  {
    "title": "Reseat your password",
    "description": "We need phone number so we can send you the password reset code",
    "content": [
      const TextField(),
      ElevatedButton(onPressed: () => AuthController.forget(), child: const Text("Send")),
    ]
  },
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
        showFieldAsBox: true,
      ),
      ElevatedButton(onPressed: () => AuthController.forget(), child: const Text("Log In")),
      const Row(
        children: [Text("Didn't get the code yet ?"), Text("Resend (0:35)")],
      )
    ]
  },
  {
    "title": "Create New Password",
    "description": "Create new password , please don`t forget password this one too",
    "content": [
      const TextField(),
      const TextField(),
      ElevatedButton(onPressed: () {}, child: const Text("Create")),
    ]
  },
];

class CustomQuestion extends StatelessWidget {
  final String text1;
  final String text2;

  const CustomQuestion({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text1, style: Theme.of(context).textTheme.labelLarge),
        TextButton(
          onPressed: () => AuthController.onPressed(text2),
          child: Text(text2, style: Theme.of(context).textTheme.labelMedium),
        ),
      ],
    );
  }
}
