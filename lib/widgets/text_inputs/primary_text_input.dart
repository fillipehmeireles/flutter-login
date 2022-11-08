import 'package:flutter/material.dart';

class PrimaryTextInput extends StatelessWidget {
  const PrimaryTextInput(
      {super.key, required this.text, required this.onChange});

  final String text;
  final void Function(String) onChange;

  @override
  Widget build(BuildContext context) => TextField(
        key: const Key('loginForm_EmailInput_textField'),
        onChanged: onChange,
        decoration: InputDecoration(
            labelText: text, border: const OutlineInputBorder()),
      );
}
