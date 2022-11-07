import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return Column(
        children: [
          _NameInput(),
          const Padding(padding: EdgeInsets.all(12)),
          _AgeInput(),
          const Padding(padding: EdgeInsets.all(12)),
          _LoginButton()
        ],
      );
    });
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.name != current.name,
        builder: (context, state) {
          return TextField(
            key: const Key('loginForm_usernameInput_textField'),
            onChanged: (name) =>
                context.read<LoginBloc>().add(LoginNameChanged(name)),
            decoration: const InputDecoration(
              labelText: 'name',
            ),
          );
        });
  }
}

class _AgeInput extends StatelessWidget {
  const _AgeInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.name != current.name,
        builder: (context, state) {
          return TextField(
            key: const Key('loginForm_ageInput_textField'),
            onChanged: (age) =>
                context.read<LoginBloc>().add(LoginAgeChanged(int.parse(age))),
            decoration: const InputDecoration(
              labelText: 'age',
            ),
          );
        });
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return state.submitLoading
          ? const CircularProgressIndicator()
          : ElevatedButton(
              key: const Key('loginForm_elevatedButton_submit'),
              onPressed: () =>
                  context.read<LoginBloc>().add(const LoginSubmitted(true)),
              child: const Text('Login'),
            );
    });
  }
}
