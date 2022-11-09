import 'package:flutter/material.dart';
import 'package:login/style/app_style.dart';
import 'package:login/widgets/text_inputs/primary_text_input.dart';

class UserTextInput extends PrimaryTextInput {
  UserTextInput({super.key, required text, required onChange})
      : super(
            text: text,
            onChange: onChange,
            icon: Icon(Icons.person, color: AppStyle.primaryColor));
}
