import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/register/bloc/register_bloc.dart';
import 'package:login/register/bloc/register_event.dart';
import 'package:login/register/bloc/register_state.dart';
import 'package:login/widgets/text_inputs/email_text_input.dart';
import 'package:login/widgets/text_inputs/primary_text_input.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(builder: (context, state) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PrimaryTextInput(
                text: 'EMAIL',
                onChange: (name) => context
                    .read<RegisterBloc>()
                    .add(RegisterEmailChanged(name)))
          ]);
    });
  }
}
