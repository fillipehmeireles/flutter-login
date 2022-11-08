import 'package:flutter/material.dart';
import 'package:login/style/button/app_button_style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.text, required this.onPress});

  final String text;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key('loginForm_elevatedButton_submit'),
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            return AppButtonStyle.primaryColor;
          },
        ),
      ),
      child: Text('$text'),
    );
  }
}
