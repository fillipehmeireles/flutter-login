import 'package:flutter/material.dart';
import 'package:login/style/app_style.dart';

class PrimaryTextButton extends StatelessWidget {
  const PrimaryTextButton(
      {super.key, required this.text, required this.onPress});

  final String text;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) => TextButton(
      onPressed: onPress,
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith(
              (states) => AppStyle.primaryColor)),
      child: Text(text));
}
