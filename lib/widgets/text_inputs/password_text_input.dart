import 'package:flutter/material.dart';
import 'package:login/widgets/text_inputs/primary_text_input.dart';

import '../../style/app_style.dart';

class PasswordTextInput<WidgetBloc, WidgetState> extends StatelessWidget {
  const PasswordTextInput(
      {super.key,
      required this.passwordHidden,
      required this.passwordIcon,
      required this.onChange,
      required this.onPress,
      this.text});

  final void Function(String) onChange;
  final void Function() onPress;
  final bool passwordHidden;
  final IconData passwordIcon;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return PrimaryTextInput(
        text: text ?? 'PASSWORD',
        obscureText: passwordHidden,
        iconButton: IconButton(
          icon: Icon(passwordIcon, color: AppStyle.primaryColor),
          onPressed: onPress,
        ),
        onChange: onChange);
  }
}
