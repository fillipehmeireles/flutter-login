import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/widgets/buttons/primary_button.dart';
import 'package:login/widgets/buttons/primary_text_button.dart';
import 'package:login/widgets/text_inputs/primary_text_input.dart';

import '../bloc/login_bloc.dart';

part 'buttons/login_button.dart';
part 'inputs/login_textfields.dart';
part 'buttons/register_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            _EmailInput(),
            Padding(padding: EdgeInsets.all(12)),
            _PasswordInput(),
            Padding(padding: EdgeInsets.all(12)),
            _LoginButton()
          ],
        ),
      );
    });
  }
}
