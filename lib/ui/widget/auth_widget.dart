import 'package:flutter/material.dart';

import '../auth/auth_controller.dart';
import '../res/app_colors.dart';

class CustomQuestion extends StatelessWidget {
  final String text1;
  final String text2;

  const CustomQuestion({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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

//
//
class TextFieldTheme extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const TextFieldTheme({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder:
              const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
          filled: true,
          fillColor: AppColor.lite_black,
          hintText: hintText,
          hintStyle: const TextStyle(fontFamily: "Intra", fontSize: 13, color: AppColor.grey),
          prefixIcon: Icon(icon),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          )),
    );
  }
}

class LineSignUp extends StatelessWidget {
  const LineSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 0,
      decoration:
          const BoxDecoration(border: Border(bottom: BorderSide(color: AppColor.white, width: 2))),
    );
  }
}
