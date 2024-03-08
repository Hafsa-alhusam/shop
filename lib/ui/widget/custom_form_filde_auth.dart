import 'package:flutter/material.dart';

class CustomFormFieldAuth extends StatelessWidget {
  final String hintText;
  final IconData iconData;

  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;
  final void Function(String)? onChanged;
  const CustomFormFieldAuth(
      {super.key,
      required this.hintText,
      required this.iconData,
      this.isNumber = false,
      this.obscureText,
      this.onTapIcon,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: TextFormField(
        onChanged: onChanged,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
          hintText: "Enter your $hintText",
          hintStyle: const TextStyle(fontSize: 13),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: InkWell(onTap: onTapIcon, child: Icon(iconData)),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButtonAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: Theme.of(context).textTheme.displaySmall),
      ),
    );
  }
}

class CustomTextAuth extends StatelessWidget {
  final String text;

  const CustomTextAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}

class CustomTitleAuth extends StatelessWidget {
  final String text;

  const CustomTitleAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayMedium,
      textAlign: TextAlign.center,
    );
  }
}
