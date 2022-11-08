import 'package:flutter/material.dart';

class PrimaryTextInput extends StatelessWidget {
  const PrimaryTextInput(
      {super.key,
      required this.text,
      required this.onChange,
      this.obscureText,
      this.iconButton,
      this.icon});

  final String text;
  final void Function(String) onChange;
  final bool? obscureText;
  final IconButton? iconButton;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: text,
        border: const OutlineInputBorder(),
        prefixIcon: iconButton ?? icon,
      ),
    );
  }
}
