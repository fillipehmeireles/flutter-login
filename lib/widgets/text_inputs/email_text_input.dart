import 'package:flutter/material.dart';

import '../../style/app_style.dart';
import 'primary_text_input.dart';

class EmailTextInput extends PrimaryTextInput {
  EmailTextInput({super.key, required text, required onChange})
      : super(
            text: text,
            onChange: onChange,
            icon: Icon(
              Icons.mail,
              color: AppStyle.primaryColor,
            ));
}
