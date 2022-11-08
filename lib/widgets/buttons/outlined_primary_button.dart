import 'package:flutter/material.dart';
import 'package:login/style/button/app_button_style.dart';

class OutlinedPrimaryButton extends StatelessWidget {
  const OutlinedPrimaryButton(
      {super.key, required this.text, required this.onPress});

  final String text;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: ButtonStyle(
        foregroundColor: MaterialStateColor.resolveWith(
            (states) => AppButtonStyle.secondaryColor),
      ),
      child: Text('$text'),
    );
  }
}
