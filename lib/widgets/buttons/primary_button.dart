import 'package:flutter/material.dart';
import 'package:login/style/app_style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.text, required this.onPress});

  final String text;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key('loginForm_elevatedButton_submit'),
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppStyle.primaryColor,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(50),
      ),
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
